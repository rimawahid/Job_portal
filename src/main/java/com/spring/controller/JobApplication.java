package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.JobPost;
import com.spring.service.JobPostService;

@RestController
@RequestMapping(value = "client/applications")
public class JobApplication {
	
	@Autowired
	JobPostService jobPostService;
	
	@RequestMapping(value = "/jobapplications", method = RequestMethod.GET)
	public ModelAndView jobApplications() {
		List<JobPost> jobPosts = jobPostService.getAll();
		return new ModelAndView("clients/applications/jobApplications", "jobPosts", jobPosts);
	}
	
	@RequestMapping(value = "/approvedapplications", method = RequestMethod.GET)
	public ModelAndView approvedApplications() {
		return new ModelAndView("clients/applications/approvedApplications");
	}
	
	@RequestMapping(value = "/rejectedapplications", method = RequestMethod.GET)
	public ModelAndView rejectedApplications() {
		return new ModelAndView("clients/applications/rejectedApplication");
	}
	
	
	
//	/* For show */
//	@RequestMapping(value = "/jobapplications", method = RequestMethod.GET)
//	public ModelAndView view() {
//		List<JobPost> jobPosts = jobPostService.getAll();
//		return new ModelAndView("clients/job/showJobs", "jobPosts", jobPosts);
//	}
}
