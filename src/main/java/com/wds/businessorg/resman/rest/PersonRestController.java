package com.wds.businessorg.resman.rest;

import com.wds.businessorg.resman.domain.Person;
import com.wds.businessorg.resman.persistence.PersonRepository;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Supplier;

@RestController
public class PersonRestController {

    private final PersonRepository personRepository;

    public PersonRestController(PersonRepository personRepository) {
        this.personRepository = personRepository;
    }

    @GetMapping("persons")
    public List<Person> getPersons(@RequestParam(required = false) Integer departmentId) {
        List<Person> persons = new ArrayList<>();

        /*
        Supplier<Iterable<Person>> personSupplier =
                (departmentId == null) ? personRepository::findAll :
                        () -> personRepository.findAllByActiveDepartmentId(departmentId);

         */

        Iterable<Person> personIterable = null;
        if(departmentId == null) {
            personIterable = personRepository.findAll();
        }
        else{
            personIterable = personRepository.findAllByActiveDepartmentId(departmentId);
        }

        for (Person person : personIterable) {
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
    public void deletePerson(@PathVariable int id) {
        personRepository.deleteById(id);
    }

    @PutMapping("persons")
    public Person putPerson(@RequestBody Person updatedPerson) {
        return personRepository.save(updatedPerson);
    }

}
