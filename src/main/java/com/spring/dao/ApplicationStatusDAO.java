package com.spring.dao;

import javax.persistence.EntityManager;

import org.hibernate.query.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.model.ApplicationStatus;


@Repository(value = "applicationStatusDAO")
@Transactional
public class ApplicationStatusDAO {
	@Autowired
	private EntityManager entityManager;
	
	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}
	public ApplicationStatus save(ApplicationStatus applicationStatus) {
		Query query = getSession().createSQLQuery("INSERT INTO applicationstatus (user_id, balance)  VALUES (:userId, (SELECT current_balance FROM Users WHERE id = :userId))");
//query.setParameter("userId", userIdValue);
//query.executeUpdate();
		return applicationStatus;
	}
}
