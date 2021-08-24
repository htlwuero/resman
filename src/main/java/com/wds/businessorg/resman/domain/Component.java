package com.wds.businessorg.resman.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Component {
    @Id
    private int  componentId;
    private byte[] content;
}
