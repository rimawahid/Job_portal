package com.spring.dao;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.spring.model.Jobpost;

@Repository(value = "jobPostDAO")
@Transactional
public class JobPostDAO {
	@Autowired
	private EntityManager entityManager;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}

	
	public Jobpost save(Jobpost jobpost) {
		getSession().save(jobpost);
		getSession().flush();
		return jobpost;
	}
}
