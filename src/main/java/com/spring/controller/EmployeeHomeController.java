package com.spring.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class EmployeeHomeController {
	@RequestMapping(value = "/employee/index", method = RequestMethod.GET)
	public ModelAndView index() {
		return new ModelAndView("employers/employee_home");
	}
}
