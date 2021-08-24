package com.wds.businessorg.resman.persistence;

import com.wds.businessorg.resman.domain.Component;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface ComponentRepository extends PagingAndSortingRepository<Component, Integer> {
}
