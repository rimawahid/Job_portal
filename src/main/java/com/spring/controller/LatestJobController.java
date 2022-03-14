package com.spring.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class LatestJobController {

	@RequestMapping(value = "/latestJobs", method = RequestMethod.GET)
	public ModelAndView contact() {
		return new ModelAndView("front-end/latestJobs");
	}
}
