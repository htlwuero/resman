package com.wds.businessorg.resman.domain;

import org.springframework.data.relational.core.mapping.MappedCollection;

import java.time.LocalDate;
import java.util.Objects;

public class Employee {

    private int  employeeId;
    private String firstName;
    private String lastName;
    private LocalDate birthDate;
    private LocalDate entryDate;
    private LocalDate exitDate;
    private int genderId;


    @MappedCollection(idColumn = "employee_key")
    private DepartmentEmployeeRelation departmentEmployeeRelation;

    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public LocalDate getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(LocalDate birthDate) {
        this.birthDate = birthDate;
    }

    public LocalDate getEntryDate() {
        return entryDate;
    }

    public void setEntryDate(LocalDate entryDate) {
        this.entryDate = entryDate;
    }

    public LocalDate getExitDate() {
        return exitDate;
    }

    public void setExitDate(LocalDate exitDate) {
        this.exitDate = exitDate;
    }

    public int getGenderId() {
        return genderId;
    }

    public void setGenderId(int genderId) {
        this.genderId = genderId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Employee employee = (Employee) o;
        return employeeId == employee.employeeId && genderId == employee.genderId && firstName.equals(employee.firstName) && lastName.equals(employee.lastName) && birthDate.equals(employee.birthDate) && entryDate.equals(employee.entryDate) && exitDate.equals(employee.exitDate);
    }

    @Override
    public int hashCode() {
        return Objects.hash(employeeId, firstName, lastName, birthDate, entryDate, exitDate, genderId);
    }
    public void setDepartmentEmployeeRelation(DepartmentEmployeeRelation departmentEmployeeRelation) {
        this.departmentEmployeeRelation = departmentEmployeeRelation;
    }
}
