package com.wds.businessorg.resman.rest;

import com.wds.businessorg.resman.domain.Employee;
import com.wds.businessorg.resman.domain.Image;
import com.wds.businessorg.resman.persistence.ImageRepository;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@CrossOrigin(value = "*")
@RestController
public class ImageRestController {

    private final ImageRepository imageRepository;

    public ImageRestController(ImageRepository imageRepository) {
        this.imageRepository = imageRepository;
    }

    @GetMapping("/images")
    List<Image> getAllImages() {
        var images = new ArrayList<Image>();
        Iterable<Image> imageIterable = this.imageRepository.findAll();
        for (Image image : imageIterable) {
            images.add(image);
        }
        return images;

    }
    @GetMapping("images/{id}")
    public Image getImageById(@PathVariable int id) {
        return imageRepository.findById(id)
                .orElse(null);
    }
}
