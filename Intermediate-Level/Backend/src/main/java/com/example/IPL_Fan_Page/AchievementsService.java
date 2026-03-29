package com.example.IPL_Fan_Page;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AchievementsService {
    @Autowired
    private AchievementsRepository achievementsRepository;
    public List<Achievements> getAllAchievements()
    {
        return achievementsRepository.findAll();
    }


}
