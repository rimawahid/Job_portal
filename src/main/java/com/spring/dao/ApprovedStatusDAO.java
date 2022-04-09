package com.spring.dao;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.model.ApprovedStatus;
@Repository(value = "approvedStatusDAO")
@Transactional
public class ApprovedStatusDAO {

	@Autowired
	private EntityManager entityManager;
	
	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}
	
	public ApprovedStatus save(ApprovedStatus approvedStatus) {
		getSession().save(approvedStatus);
		getSession().flush();
		return approvedStatus;
	}
}
