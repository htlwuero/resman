package com.wds.businessorg.resman.persistence;

import com.wds.businessorg.resman.domain.Person;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface PersonRepository extends PagingAndSortingRepository<Person, Integer> {
}
