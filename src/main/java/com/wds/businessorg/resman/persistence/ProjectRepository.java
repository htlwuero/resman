package com.wds.businessorg.resman.persistence;

import com.wds.businessorg.resman.domain.Project;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface ProjectRepository extends PagingAndSortingRepository<Project,Integer> {


}
