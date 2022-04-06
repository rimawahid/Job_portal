package com.spring.controller.freelancer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.JobPost;
import com.spring.model.User;
import com.spring.service.JobPostService;

@RestController
@RequestMapping(value = "freelancer")
public class FindWorkController {
	
	@Autowired
	JobPostService jobPostService;
	
	@RequestMapping(value = "/findwork", method = RequestMethod.GET)
	public ModelAndView findWork() {
		List<JobPost> jobpost = jobPostService.searchBySkills(null);
		//System.out.println(jobpost);
		return new ModelAndView("freelancer/findWork/findwork", "jobpost", jobpost);
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
