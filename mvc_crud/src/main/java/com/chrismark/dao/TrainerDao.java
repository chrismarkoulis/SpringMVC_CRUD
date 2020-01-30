/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.chrismark.dao;

import com.chrismark.entities.Trainer;
import java.util.List;

/**
 *
 * @author chris
 */
public interface TrainerDao {
    
    public List<Trainer> findAll();

    public void createOrUpdate(Trainer t);

    public void delete(int id);

    public Trainer getById(int id);

    public List<Trainer> findTrainersByName(String searchName);
}
