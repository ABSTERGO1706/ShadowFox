package com.example.IPL_Fan_Page;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PlayerService {
    @Autowired
    private PlayerRepository playerRepository;
    //get all values in the table
    public List<Player> getAllPlayers()
    {
        return playerRepository.findAll();
    }
/*
    //get each element by id
    public Player getPlayersById(Integer id)
    {
        return playerRepository.findById(id).orElse(null);
    }
    //insert element

    public Player savePlayer(Player player)
    {
        return playerRepository.save(player);
    }

    //delete

    public void deletePlayer(Integer id)
    {
        playerRepository.deleteById(id);
    }*/
}
