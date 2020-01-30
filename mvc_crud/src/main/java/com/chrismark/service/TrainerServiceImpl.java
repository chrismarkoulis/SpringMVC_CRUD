/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.chrismark.service;

import com.chrismark.dao.TrainerDao;
import com.chrismark.entities.Trainer;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author chris
 */
@Service
@Transactional
public class TrainerServiceImpl implements TrainerService {
    
    @Autowired
    TrainerDao tdao;

   @Override
    public List<Trainer> getAllTrainers() {

        return tdao.findAll();
    }

    @Override
    public void createOrUpdateTrainer(Trainer t) {

        tdao.createOrUpdate(t);

    }

    @Override
    public void deleteTrainer(int id) {
        tdao.delete(id);

    }

    @Override
    public Trainer getTrainerById(int id) {
        return tdao.getById(id);
    }

    @Override
    public List<Trainer> findTrainersByName(String searchName) {
        List<Trainer> list = tdao.findTrainersByName(searchName);
        return list;

    }

}
