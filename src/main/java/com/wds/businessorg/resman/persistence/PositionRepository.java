package com.wds.businessorg.resman.persistence;

import com.wds.businessorg.resman.domain.Position;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface PositionRepository extends PagingAndSortingRepository<Position, Integer> {
}
