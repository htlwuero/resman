package com.wds.businessorg.resman.rest;

import com.wds.businessorg.resman.domain.Employee;
import com.wds.businessorg.resman.domain.Person;
import com.wds.businessorg.resman.persistence.EmployeeRepository;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Supplier;

@CrossOrigin(value = "*")
@RestController
public class EmployeeRestController {

    private final EmployeeRepository employeeRepository;

    public EmployeeRestController(EmployeeRepository employeeRepo) {
        this.employeeRepository = employeeRepo;
    }

    @GetMapping("/employees")
    List<Employee> getAllEmployees(@RequestParam(required = false) Integer departmentId){
        List<Employee> employees = new ArrayList<>();
        Supplier<Iterable<Employee>> employeeSupplier =
                departmentId == null ? employeeRepository::findAll :
                        () -> employeeRepository.findAllByActiveDepartmentId(departmentId);

        for (Employee employee : employeeSupplier.get()) {
            employees.add(employee);
        }

        return employees;
    }
    @GetMapping("employees/{id}")
    public Employee getEmployeeById(@PathVariable int id) {
        return employeeRepository.findById(id)
                .orElse(null);
    }
}
