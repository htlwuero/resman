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

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        DepartmentEmployeeRelation that = (DepartmentEmployeeRelation) o;
        return departmentKey == that.departmentKey && employeeKey == that.employeeKey &&
                Objects.equals(validFrom, that.validFrom) &&
                Objects.equals(validTo, that.validTo);
    }

    @Override
    public int hashCode() {
        return Objects.hash(departmentKey, employeeKey, validFrom, validTo);
    }

}



