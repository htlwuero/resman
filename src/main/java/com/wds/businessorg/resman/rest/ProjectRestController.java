package com.wds.businessorg.resman.rest;

import com.wds.businessorg.resman.domain.Project;
import com.wds.businessorg.resman.persistence.ProjectRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class ProjectRestController {

    private final ProjectRepository projectRepository;

    public ProjectRestController(ProjectRepository projectRepository) {
        this.projectRepository = projectRepository;
    }

    @GetMapping("/projects")
    List<Project> getAllProjects() {
        var projects = new ArrayList<Project>();
        Iterable<Project> projectIterable = this.projectRepository.findAll();
        for (Project project : projectIterable) {
            projects.add(project);
        }
        return projects;

    }
}
