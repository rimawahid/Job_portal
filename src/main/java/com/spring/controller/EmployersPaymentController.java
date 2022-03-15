package com.spring.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class EmployersPaymentController {
	@RequestMapping(value = "/employee/payment", method = RequestMethod.GET)
	public ModelAndView index() {
		return new ModelAndView("employers/employee_payment");
	}
}
