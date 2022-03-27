package com.spring.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping(value = "freelancer")
public class FreelancerController {
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView index() {
		return new ModelAndView("freelancer/home");
	}
	
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public ModelAndView showProfile() {
		return new ModelAndView("freelancer/profile/showProfile");
	}

}
