package com.wds.businessorg.resman.rest;

import com.wds.businessorg.resman.domain.Person;
import com.wds.businessorg.resman.persistence.PersonRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class PersonRestController {

    private final PersonRepository personRepository;

    public PersonRestController(PersonRepository personRepository) {
        this.personRepository = personRepository;
    }

    @GetMapping("persons")
    public List<Person> getPersons() {
        var persons = new ArrayList<Person>();

        for(Person person: personRepository.findAll()) {
            persons.add(person);
        }

        return persons;
    }

}
