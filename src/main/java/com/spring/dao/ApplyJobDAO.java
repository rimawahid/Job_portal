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
	
	public List<ApplyJob> getByJCode(String jcode) {
        String hqlQuery = "from applyjob where jcode = :jcode";
        Query query = getSession().createQuery(hqlQuery);
        query.setParameter("jcode", jcode);
        
      System.out.println("search" +jcode);
        List<ApplyJob> flightList = query.list();
        getSession().flush();
      
        return flightList;
        }
}
