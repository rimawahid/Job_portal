package com.spring.dao;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.spring.model.PaymentMethod;

@Repository(value = "paymentDAO")
@Transactional
public class PaymentDAO {
	@Autowired
	private EntityManager entityManager;
	
	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}
	
	public PaymentMethod save(PaymentMethod paymentMethod) {
		getSession().save(paymentMethod);
		getSession().flush();
		return paymentMethod;
	}
}
