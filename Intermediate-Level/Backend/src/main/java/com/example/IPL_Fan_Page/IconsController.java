package com.example.IPL_Fan_Page;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.swing.*;
import java.util.List;
@CrossOrigin(origins = "http://localhost:5173")
@RestController
@RequestMapping("/Icons")
public class IconsController {
    @Autowired
    private IconService iconService;

    @GetMapping
    public List<Icons> getAllIcons()
    {
        return iconService.getAllIcons();
    }
}
