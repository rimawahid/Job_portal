package com.spring.controller.freelancer;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping(value = "freelancer")
public class FindWorkController {
	
	@RequestMapping(value = "/findwork", method = RequestMethod.GET)
	public ModelAndView findWork() {
		return new ModelAndView("freelancer/findWork/findwork");
	}
	
	@RequestMapping(value = "/proposals", method = RequestMethod.GET)
	public ModelAndView proposals() {
		return new ModelAndView("freelancer/findWork/proposals");
	}
	
	@RequestMapping(value = "/savedjob", method = RequestMethod.GET)
	public ModelAndView savedJobs() {
		return new ModelAndView("freelancer/findWork/savedJob");
	}
}
