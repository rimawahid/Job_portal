package com.spring.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Category;
import com.spring.model.JobPost;
import com.spring.model.SavedJobs;
import com.spring.service.CategoryService;
import com.spring.service.JobPostService;

@RestController
//@RequestMapping(value = "findwork")

public class FindWordController {
	@Autowired
	JobPostService jobPostService;

	@Autowired
	CategoryService categoryService;

	/* for findwork page */
	@RequestMapping(value = "/freelancer-jobs", method = RequestMethod.GET)
	public ModelAndView freelancerJobs() {
		List<Category> categories = categoryService.getAll();
		return new ModelAndView("front-end/findwork", "categories", categories);
	}
	
	/* for all type job findwork page */
	@RequestMapping(value = "/allJobs", method = RequestMethod.GET)
	public List<JobPost> allTypeJobs() {
		List<JobPost> jobPosts = jobPostService.getAll();
		System.out.println(jobPosts + "................");
		return jobPosts;
		// return new ModelAndView("front-end/findwork", "jobPosts", jobPosts);
	}

	@RequestMapping(value = "findwork/details/{id}", method = RequestMethod.GET)
	public ModelAndView edit(@PathVariable String id) {
		int pid = Integer.valueOf(id);
		JobPost jobPost = jobPostService.getById(pid);
		return new ModelAndView("front-end/jobDetails", "jobPost", jobPost);
	}
	
	@RequestMapping(value = "/jobsbyCat", method = RequestMethod.POST)
	public List<JobPost> jobsByCat(HttpServletRequest request) {
		System.out.println(request.getParameter("job_cat"));
		List<JobPost> jobPosts = jobPostService.getByCat(request.getParameter("job_cat"));
		System.out.println(jobPosts + "................");
		return jobPosts;
		// return new ModelAndView("front-end/findwork", "jobPosts", jobPosts);
	}
	
	@RequestMapping(value = "/jobsbySkill", method = RequestMethod.POST)
	public List<JobPost> jobsBySkill(HttpServletRequest request) {
		System.out.println(request.getParameter("job_cat"));
		List<JobPost> jobPosts = jobPostService.getBySkill(request.getParameter("job_cat"));
		System.out.println(jobPosts + "................");
		return jobPosts;
		// return new ModelAndView("front-end/findwork", "jobPosts", jobPosts);
	}

}
