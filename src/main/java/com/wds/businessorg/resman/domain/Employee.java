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


    @MappedCollection(idColumn = "employee_key")
    private DepartmentEmployeeRelation departmentEmployeeRelation;

    @MappedCollection(idColumn = "employee_key")
    private SkillEmployeeRelation skillEmployeeRelation;
}
