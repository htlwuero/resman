package com.wds.businessorg.resman.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.MappedCollection;

import java.time.LocalDate;
import java.util.Objects;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class Employee {
    @Id
    private int  employeeId;
    private String firstName;
    private String lastName;
    private LocalDate birthDate;
    private LocalDate entryDate;
    private LocalDate exitDate;
    private int genderId;
    private String userId;


    @MappedCollection(idColumn = "EMPLOYEE_KEY")
    private DepartmentEmployeeRelation departmentEmployeeRelation;

    @MappedCollection(idColumn = "EMPLOYEE_KEY")
    private SkillEmployeeRelation skillEmployeeRelation;

    @MappedCollection(idColumn = "EMPLOYEE_KEY")
    private ProjectEmployeeRelation projectEmployeeRelation;

}
