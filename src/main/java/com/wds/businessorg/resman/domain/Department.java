package com.wds.businessorg.resman.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.With;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.MappedCollection;

import java.util.Collection;

@Data
@NoArgsConstructor
@AllArgsConstructor
@With
public class Department {
    @Id
    private int departmentId;

    private String department;

    @MappedCollection(idColumn = "department_key")
    private Collection<DepartmentEmployeeRelation> departmentEmployeeRelations;

    @MappedCollection(idColumn = "department_key")
    private Collection<ImageDepartmentRelation> imageDepartmentRelations;


}
