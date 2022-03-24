package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.JobPost;
import com.spring.service.JobPostService;

@RestController
public class IndexController {

	@Autowired
	JobPostService jobPostService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView index() {
		return new ModelAndView("front-end/index");
	}
	
	@RequestMapping(value = "/jobapply/{id}", method = RequestMethod.GET)
	public ModelAndView jobapply(@PathVariable String id){
        int pid = Integer.valueOf(id);
        JobPost jobPost = jobPostService.getProductById(pid);
        return new ModelAndView("front-end/proposals", "jobPost", jobPost);
    }


	@RequestMapping(value = "/findWork", method = RequestMethod.GET)
	public ModelAndView findWork() {
		List<JobPost> jobPosts = jobPostService.getAll();
		return new ModelAndView("front-end/latestJobs", "jobPosts", jobPosts);
	}
	/*
	 * For show
	 * 
	 * @RequestMapping(value = "/findWork", method = RequestMethod.GET) public
	 * ModelAndView view() { List<JobPost> jobPosts = jobPostService.getAll();
	 * return new ModelAndView("clients/job/showJobs", "jobPosts", jobPosts); }
	 */
}
