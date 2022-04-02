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
import com.spring.model.Category;
import com.spring.model.JobPost;
import com.spring.model.User;
import com.spring.service.ApplyJobService;
import com.spring.service.JobPostService;

@RestController
@RequestMapping(value = "client/applications")
public class JobApplicationController {
	
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
	
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public ModelAndView update(HttpServletRequest request, @PathVariable("id") int id) {
		//System.out.println(id +"....................");
		ApplyJob applyjob = applyJobService.getById(id);
		System.out.println(applyjob.getId());
		ApplyJob p = applyJobService.approvedStatus(applyjob);
		return new ModelAndView("clients/applications/approvedApplications");

	}

		
		
	
	
	
	@RequestMapping(value = "/approvedapplications", method = RequestMethod.GET)
	public ModelAndView approvedApplications() {
		List<ApplyJob> applyJob = applyJobService.findByApproved(null);
		System.out.println(applyJob);
		return new ModelAndView("clients/applications/approvedApplications", "applyJob", applyJob);
	}
	
//	/* For All Clients */
//	@RequestMapping(value = "/client", method = RequestMethod.GET)
//	public ModelAndView viewClient() {
//		List<User> users = userService.findByClient(null);
//		System.out.println(users);
//		return new ModelAndView("admin/users/clients", "users", users);
//	}
	

	

	
	
	
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
