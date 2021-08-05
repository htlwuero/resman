package com.wds.businessorg.resman.rest;

import com.wds.businessorg.resman.domain.Department;
import com.wds.businessorg.resman.persistence.DepartmentRepository;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class DepartmentRestController {

    private final DepartmentRepository departmentRepository;

    public DepartmentRestController(DepartmentRepository departmentRepository) {
        this.departmentRepository = departmentRepository;
    }

    @GetMapping("departments")
    public List<Department> getDepartments() {
        var departments = new ArrayList<Department>();

        for (Department department : departmentRepository.findAll()) {
            departments.add(department);
        }

        return departments;
    }

}
