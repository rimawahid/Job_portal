package com.spring.dao;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.model.RejectedStatus;

@Repository(value = "rejectedStatusDAO")
@Transactional
public class RejectedStatusDAO {
	@Autowired
	private EntityManager entityManager;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}

	public RejectedStatus save(RejectedStatus rejectedStatus) {
		getSession().save(rejectedStatus);
		getSession().flush();
		return rejectedStatus;
	}
}
