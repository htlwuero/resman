package com.wds.businessorg.resman.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProjectEmployeeRelation {
    private int  projectEmployeeRelationId;
    private int projectKey;
    private int employeeKey;
    private LocalDate entryDateProject ;
    private LocalDate exitDateProject ;


}
