package com.wds.businessorg.resman.rest;

import com.wds.businessorg.resman.domain.Image;
import com.wds.businessorg.resman.domain.Position;
import com.wds.businessorg.resman.persistence.ImageRepository;
import com.wds.businessorg.resman.persistence.PositionRepository;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@CrossOrigin(value = "*")
@RestController
public class PositionRestController {

    private final PositionRepository positionRepository;

    public PositionRestController(PositionRepository positionRepository) {
        this.positionRepository = positionRepository;
    }

    @GetMapping("/positions")
    List<Position> getAllPositions() {
        var positions = new ArrayList<Position>();
        Iterable<Position> positionIterable = this.positionRepository.findAll();
        for (Position position : positionIterable) {
            position.add(position);
        }
        return positions;

    }
    @GetMapping("positions/{id}")
    public Position getPositionById(@PathVariable int id) {
        return positionRepository.findById(id)
                .orElse(null);
    }
}
