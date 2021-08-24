package com.wds.businessorg.resman.rest;

import com.wds.businessorg.resman.domain.Skill;
import com.wds.businessorg.resman.persistence.SkillRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class SkillRestController {

    private final SkillRepository skillRepository;

    public SkillRestController(SkillRepository skillRepository) {
        this.skillRepository = skillRepository;
    }

    @GetMapping("/skills")
    List<Skill> getAllProjects() {
        var skills = new ArrayList<Skill>();
        Iterable<Skill> skillIterable = this.skillRepository.findAll();
        for (Skill skill : skillIterable) {
            skills.add(skill);
        }
        return skills;

    }
}
