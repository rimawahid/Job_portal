package com.spring.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.ApplyJob;
import com.spring.model.JobPost;
import com.spring.service.ApplyJobService;
import com.spring.service.JobPostService;

@RestController
@RequestMapping(value = "client/applications")
public class JobApplication {
	
	@Autowired
	JobPostService jobPostService;
	
	@Autowired
	ApplyJobService applyJobService;
	
	@RequestMapping(value = "/jobapplications", method = RequestMethod.GET)
	public ModelAndView jobApplications() {
		List<JobPost> jobPosts = jobPostService.getAll();
		return new ModelAndView("clients/applications/jobApplications", "jobPosts", jobPosts);
	}
	
	
	//search subcategory through category
		@RequestMapping(value = "/searchTitle/{title}", method = RequestMethod.POST)
		public List<ApplyJob> getValue(HttpServletRequest request, @PathVariable("title") String title) {
			return applyJobService.getByTitle(title);
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
