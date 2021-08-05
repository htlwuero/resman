package com.wds.businessorg.resman.persistence;

import com.wds.businessorg.resman.domain.Department;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface DepartmentRepository extends PagingAndSortingRepository<Department, Integer> {
}
