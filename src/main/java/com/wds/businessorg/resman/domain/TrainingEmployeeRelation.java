package com.wds.businessorg.resman.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class TrainingEmployeeRelation {
    private int  trainingId;
    private int employeeKey;
    private LocalDate planedFrom ;
    private LocalDate planedTo ;
    private boolean finished ;
}
