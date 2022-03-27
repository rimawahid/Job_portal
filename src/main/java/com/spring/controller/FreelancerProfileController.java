package com.spring.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping(value = "freelancer/profile")
public class FreelancerProfileController {

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView showProfile() {
		return new ModelAndView("freelancer/profile/addProfile");
	}
}
