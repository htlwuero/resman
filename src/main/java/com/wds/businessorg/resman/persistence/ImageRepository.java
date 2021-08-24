package com.wds.businessorg.resman.persistence;

import com.wds.businessorg.resman.domain.Image;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface ImageRepository extends PagingAndSortingRepository<Image, Integer> {
}
