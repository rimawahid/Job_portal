package com.spring.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.spring.model.ApplyJob;

@Repository(value = "applyJobDAO")
@Transactional
public class ApplyJobDAO {
	@Autowired
	private EntityManager entityManager;
	
	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}
	
	public ApplyJob save(ApplyJob applyJob) {
		getSession().save(applyJob);
		getSession().flush();
		return applyJob;
	}
	
	public List<ApplyJob> getByTitle(String title) {
        String hqlQuery = "from applyjob where title = :title";
        Query query = getSession().createQuery(hqlQuery);
        query.setParameter("title", title);
        
      System.out.println("search" +title);
        List<ApplyJob> flightList = query.list();
        getSession().flush();
      
        return flightList;
        }
}
