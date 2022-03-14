package com.spring.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
@RestController
public class JobSeekersController {
	
	@RequestMapping(value = "/jobseekers", method = RequestMethod.GET)
	public ModelAndView jobseeker() {
		return new ModelAndView("front-end/jobseekers");
	}
}
