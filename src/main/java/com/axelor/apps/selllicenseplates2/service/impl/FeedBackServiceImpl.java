package com.axelor.apps.selllicenseplates2.service.impl;

import com.axelor.apps.selllicenseplates2.dto.FeedBackCreateRequest;
import com.axelor.apps.selllicenseplates2.enums.FeedBackType;
import com.axelor.apps.selllicenseplates2.model.Feedback;
import com.axelor.apps.selllicenseplates2.repository.FeedbackRepository;
import com.axelor.apps.selllicenseplates2.service.EmailService;
import com.axelor.apps.selllicenseplates2.service.FeedBackService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class FeedBackServiceImpl implements FeedBackService {

    private final FeedbackRepository feedbackRepository;
    private final EmailService emailService;

    @Value("${app.feedbackRecipientEmail}")
    private String feedbackRecipientEmail;

    @Override
    public void createFeedback(FeedBackCreateRequest request) {
        Feedback feedback = Feedback.builder()
                .phoneNumber(request.getPhoneNumber())
                .fullName(request.getFullName())
                .carNumber(request.getCarNumber())
                .feedbackType(request.getFeedbackType())
                .build();

        feedbackRepository.save(feedback);

        String feedbackTypeLabel = formatFeedbackType(request.getFeedbackType());
        String subject = "Новая заявка с сайта: " + feedbackTypeLabel;

        String body = String.format(
                """
                🔔 Поступила новая заявка с сайта

                Тип заявки: %s
                Имя: %s
                Телефон: %s
                Номер автомобиля: %s

                Пожалуйста, свяжитесь с клиентом как можно скорее.
                """,
                feedbackTypeLabel,
                getValueOrDefault(request.getFullName()),
                getValueOrDefault(request.getPhoneNumber()),
                getValueOrDefault(request.getCarNumber())
        );

        emailService.sendFeedbackEmail(feedbackRecipientEmail, subject, body);
    }

    private String formatFeedbackType(String feedbackType) {
        if (feedbackType == null || feedbackType.isBlank()) {
            return "Не указан";
        }

        for (FeedBackType type : FeedBackType.values()) {
            if (type.name().equalsIgnoreCase(feedbackType) ||
                type.getDisplayName().equalsIgnoreCase(feedbackType)) {
                return type.getDisplayName();
            }
        }

        String normalizedType = feedbackType.toLowerCase();
        if (normalizedType.contains("buy") || normalizedType.contains("bye") || normalizedType.contains("куп")) {
            return FeedBackType.BUY_NUMBER_PLATE.getDisplayName();
        }
        if (normalizedType.contains("sell") || normalizedType.contains("прод")) {
            return FeedBackType.SELL_NUMBER_PLATE.getDisplayName();
        }

        return feedbackType;
    }

    private String getValueOrDefault(String value) {
        return value == null || value.isBlank() ? "Не указано" : value;
    }
}
