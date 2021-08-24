package com.wds.businessorg.resman.rest;

import com.wds.businessorg.resman.domain.Component;
import com.wds.businessorg.resman.persistence.ComponentRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class ComponentRestController {

    private final ComponentRepository componentRepository;

    public ComponentRestController(ComponentRepository componentRepository) {
        this.componentRepository = componentRepository;
    }

    @GetMapping("/components")
    List<Component> getAllComponents() {
        var components = new ArrayList<Component>();
        Iterable<Component> componentIterable = this.componentRepository.findAll();
        for (Component component : componentIterable) {
            components.add(component);
        }
        return components;

    }
}
