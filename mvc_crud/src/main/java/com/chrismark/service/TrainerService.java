/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.chrismark.service;

import com.chrismark.entities.Trainer;
import java.util.List;

/**
 *
 * @author chris
 */
public interface TrainerService {
    
    public List<Trainer> getAllTrainers();

    public void createOrUpdateTrainer(Trainer t);
    
    public Trainer getTrainerById(int id);

    public void deleteTrainer(int id);

    public List<Trainer> findTrainersByName(String searchName);
}
