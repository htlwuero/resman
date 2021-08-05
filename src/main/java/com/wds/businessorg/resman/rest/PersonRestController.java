package com.wds.businessorg.resman.rest;

import com.wds.businessorg.resman.domain.Person;
import com.wds.businessorg.resman.persistence.PersonRepository;
import org.springframework.web.bind.annotation.*;

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

    @GetMapping("persons/{id}")
    public Person getPersonById(@PathVariable int id) {
        return personRepository.findById(id)
                .orElse(null);
    }

    @PostMapping("persons")
    public Person postPerson(@RequestBody Person personToInsert) {
        personRepository.save(personToInsert);
        return personToInsert;
    }

    @DeleteMapping("persons/{id}")
    public void deletePerson(@PathVariable int id){
        personRepository.deleteById(id);
    }

    @PutMapping("persons")
    public Person putPerson(@RequestBody Person updatedPerson){
        return personRepository.save(updatedPerson);
    }

}
