package com.wds.businessorg.resman.domain;

import java.time.LocalDate;
import java.util.Objects;

public class DepartmentPersonRelation {
    private int departmentKey;
    private int personKey;
    private LocalDate validFrom;
    private LocalDate validUntil;

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        DepartmentPersonRelation that = (DepartmentPersonRelation) o;
        return departmentKey == that.departmentKey && personKey == that.personKey &&
                Objects.equals(validFrom, that.validFrom) &&
                Objects.equals(validUntil, that.validUntil);
    }

    @Override
    public int hashCode() {
        return Objects.hash(departmentKey, personKey, validFrom, validUntil);
    }

    public int getDepartmentKey() {
        return departmentKey;
    }

    public void setDepartmentKey(int departmentKey) {
        this.departmentKey = departmentKey;
    }

    public int getPersonKey() {
        return personKey;
    }

    public void setPersonKey(int personKey) {
        this.personKey = personKey;
    }

    public LocalDate getValidFrom() {
        return validFrom;
    }

    public void setValidFrom(LocalDate validFrom) {
        this.validFrom = validFrom;
    }

    public LocalDate getValidUntil() {
        return validUntil;
    }

    public void setValidUntil(LocalDate validUntil) {
        this.validUntil = validUntil;
    }
}
