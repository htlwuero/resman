package com.wds.businessorg.resman.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.MappedCollection;

import java.time.LocalDate;
import java.util.Objects;

public class Person {

    @Id
    private int id;

    private String name;

    private String lastName;

    private LocalDate birthDate;

    @MappedCollection(idColumn = "PERSON_KEY")
    private DepartmentPersonRelation departmentPersonRelation;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Person person = (Person) o;
        return id == person.id && Objects.equals(name, person.name) &&
                Objects.equals(lastName, person.lastName) &&
                Objects.equals(birthDate, person.birthDate);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, lastName, birthDate);
    }

    public DepartmentPersonRelation getDepartmentPersonRelation() {
        return departmentPersonRelation;
    }

    public void setDepartmentPersonRelation(DepartmentPersonRelation departmentPersonRelation) {
        this.departmentPersonRelation = departmentPersonRelation;
    }
}
