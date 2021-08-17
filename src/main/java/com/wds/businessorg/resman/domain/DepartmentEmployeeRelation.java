package com.wds.businessorg.resman.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.util.Objects;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class DepartmentEmployeeRelation {
    private int departmentEmployeeRelationId;
    private int departmentKey;
    private int employeeKey;
    private LocalDate validFrom;
    private LocalDate validTo;

}



