package com.wds.businessorg.resman.persistence;

import com.wds.businessorg.resman.domain.Training;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface TrainingRepository extends PagingAndSortingRepository<Training, Integer> {
}
