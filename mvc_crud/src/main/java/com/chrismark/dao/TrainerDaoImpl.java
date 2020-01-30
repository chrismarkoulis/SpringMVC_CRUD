/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.chrismark.dao;

import com.chrismark.entities.Trainer;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author chris
 */
@Repository
public class TrainerDaoImpl implements TrainerDao {
    
    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession() {
        return sessionFactory.getCurrentSession();

    }

   @Override
    public List<Trainer> findAll() {
        Query q = getSession().createQuery("SELECT t FROM Trainer t");
        List<Trainer> list = q.getResultList();
        return list;
    }

    @Override
    public void createOrUpdate(Trainer t) {
        getSession().saveOrUpdate(t);


    }

    @Override
    public void delete(int id) {
        Trainer t = getSession().find(Trainer.class, id);
               getSession().delete(t);
    }

    @Override
    public Trainer getById(int id) {
        
        Trainer t = getSession().get(Trainer.class, id);
        return t;

    }

    @Override
    public List<Trainer> findTrainersByName(String searchName) {

        Query q = getSession().createNamedQuery("Trainer.findLikeName");
        q.setParameter("name", "%"+searchName+"%");
        List<Trainer> list = q.getResultList();
        return list;
    }
    
}
