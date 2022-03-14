package com.spring.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
@RestController
public class EmployersController {
	
	@RequestMapping(value = "/employers", method = RequestMethod.GET)
	public ModelAndView employee() {
		return new ModelAndView("front-end/employers");
	}
}
