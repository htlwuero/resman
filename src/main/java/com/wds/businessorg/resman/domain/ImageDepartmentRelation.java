package com.wds.businessorg.resman.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ImageDepartmentRelation {
    private int  imageId;
    private int departmentKey;
    private LocalDate validFrom;
    private LocalDate validTo;
}
