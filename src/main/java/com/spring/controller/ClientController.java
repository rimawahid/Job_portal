package com.spring.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class ClientController {
	@RequestMapping(value = "/client/index", method = RequestMethod.GET)
	public ModelAndView index() {
		return new ModelAndView("clients/home");
	}
	
	/*
	 * @RequestMapping(value = "/client/postjob", method = RequestMethod.GET) public
	 * ModelAndView postAJob() { return new ModelAndView("clients/job/postJob"); }
	 */
}
