package com.wds.businessorg.resman.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.MappedCollection;

import java.util.Collection;

public class Department {
    @Id
    private int id;

    private String name;

    @MappedCollection(idColumn = "DEPARTMENT_KEY")
    private Collection<DepartmentPersonRelation> persons;

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

    public Collection<DepartmentPersonRelation> getPersons() {
        return persons;
    }

    public void setPersons(Collection<DepartmentPersonRelation> persons) {
        this.persons = persons;
    }
}
