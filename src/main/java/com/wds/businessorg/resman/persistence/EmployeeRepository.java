package com.wds.businessorg.resman.persistence;

import com.wds.businessorg.resman.domain.Employee;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface EmployeeRepository extends PagingAndSortingRepository<Employee,Integer> {
}
