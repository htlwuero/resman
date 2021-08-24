package com.wds.businessorg.resman.rest;


import com.wds.businessorg.resman.domain.Training;
import com.wds.businessorg.resman.persistence.TrainingRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class TrainingRestController {

    private final TrainingRepository trainingRepository;

    public TrainingRestController(TrainingRepository trainingRepository) {
        this.trainingRepository = trainingRepository;
    }

    @GetMapping("/trainings")
    List<Training> getAllTrainings() {
        var trainings= new ArrayList<Training>();
        Iterable<Training> trainingIterable = this.trainingRepository.findAll();
        for (Training training : trainingIterable) {
            trainings.add(training);
        }
        return trainings;

    }
}
