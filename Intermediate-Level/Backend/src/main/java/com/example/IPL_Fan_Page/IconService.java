package com.example.IPL_Fan_Page;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IconService {
    @Autowired
    private IconsRepository iconsRepository;
    public List<Icons> getAllIcons()
    {
        return iconsRepository.findAll();
    }
}
