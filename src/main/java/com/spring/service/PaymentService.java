package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.PaymentDAO;
import com.spring.model.PaymentMethod;

@Service(value = "paymentService")
public class PaymentService {
	@Autowired
	PaymentDAO paymentDAO;
	
	public PaymentMethod save(PaymentMethod paymentMethod) {
		return paymentDAO.save(paymentMethod);
	}
}
