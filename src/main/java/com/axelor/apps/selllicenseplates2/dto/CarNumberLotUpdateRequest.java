package com.axelor.apps.selllicenseplates2.dto;

import com.fasterxml.jackson.annotation.JsonAlias;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CarNumberLotUpdateRequest {

    @JsonAlias("price")
    private BigDecimal originalPrice;
    private String firstLetter;
    private String secondLetter;
    private String thirdLetter;
    private String firstDigit;
    private String secondDigit;
    private String thirdDigit;
    private String comment;
    private Long regionId;

}
