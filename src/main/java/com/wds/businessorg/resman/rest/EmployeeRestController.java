package com.wds.businessorg.resman.rest;

import com.wds.businessorg.resman.domain.Employee;
import com.wds.businessorg.resman.persistence.EmployeeRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class EmployeeRestController {

    private final EmployeeRepository employeeRepository;

    public EmployeeRestController(EmployeeRepository employeeRepo) {
        this.employeeRepository = employeeRepo;
    }

    @GetMapping("/employees")
    List<Employee> getAllEmployees(){
        var employees = new ArrayList<Employee>();
        Iterable<Employee> employeeIterable = this.employeeRepository.findAll();
        for (Employee employee : employeeIterable) {
            employees.add(employee);
        }
        return employees;

    }

}
