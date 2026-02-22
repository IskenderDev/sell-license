package com.axelor.apps.selllicenseplates2.dto.admin;

import com.fasterxml.jackson.annotation.JsonAlias;
import lombok.Data;

import java.math.BigDecimal;

@Data
public class CarNumberLotUpdateAdminRequest {
    private String firstLetter;
    private String secondLetter;
    private String thirdLetter;
    private String firstDigit;
    private String secondDigit;
    private String thirdDigit;

    private Long regionId;

    @JsonAlias("price")
    private BigDecimal markupPrice;

    private String comment;

}
