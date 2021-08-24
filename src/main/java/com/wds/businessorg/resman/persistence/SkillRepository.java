package com.wds.businessorg.resman.persistence;

import com.wds.businessorg.resman.domain.Skill;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface SkillRepository extends PagingAndSortingRepository<Skill, Integer> {

}
