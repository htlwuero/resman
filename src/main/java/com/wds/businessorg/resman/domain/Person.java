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

    // ACHTUNG: es gibt Probleme mit H2 vs. Postgre. H2 will idColumn="PERSON_KEY" und postgre will idColumn="person_key"
    // Postgre macht alles zum lowercase und H2 macht alles zum Uppercase
    // siehe: https://stackoverflow.com/questions/63329611/jdbcsqlsyntaxerrorexception-column-not-found-while-using-spring-data-jdbc
    // siehe: https://stackoverflow.com/questions/51743503/spring-boot-tables-created-with-lowercase
    // siehe: https://stackoverflow.com/questions/51743503/spring-boot-tables-created-with-lowercase
    // siehe: https://stackoverflow.com/questions/28571848/spring-boot-jpa-insert-in-table-with-uppercase-name-with-hibernate
    // siehe: https://stackoverflow.com/questions/46052297/how-to-configure-hibernate-to-make-table-column-name-with-uppercase-and-lowercas
    @MappedCollection(idColumn = "person_key")
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
