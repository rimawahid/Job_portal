package com.spring.dao;

import javax.persistence.EntityManager;

import org.hibernate.Session;
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
}
