package com.spring.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Category;
import com.spring.model.JobPost;
import com.spring.service.CategoryService;
import com.spring.service.JobPostService;



@RestController
@RequestMapping(value = "client/job")
public class JobPostController {

	@Autowired
	CategoryService categoryService;
	
	@Autowired
	JobPostService jobPostService;

	/* For show Category */
	@RequestMapping(value = "/postjob", method = RequestMethod.GET)
	public ModelAndView view1() {
		List<Category> categories = categoryService.getAll();
		return new ModelAndView("clients/job/postJob", "categories", categories);
	}
	
	/* For add */

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute JobPost jobpost) {
		JobPost c = jobPostService.save(jobpost);
		return null;
	}
	
	/* For show */
	@RequestMapping(value = "/showJobs", method = RequestMethod.GET)
	public ModelAndView view() {
		List<JobPost> jobPosts = jobPostService.getAll();
		return new ModelAndView("clients/job/showJobs", "jobPosts", jobPosts);
	}
	
	/* for edit */
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public ModelAndView edit(@PathVariable String id) {
		int pid = Integer.valueOf(id);
		JobPost j = jobPostService.getProductById(pid);
		return new ModelAndView("clients/job/updatejobs", "j", j);
	}
	

	/* For update */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView update(@ModelAttribute JobPost jobpost) {
		JobPost j = jobPostService.update(jobpost);
		List<JobPost> jobPosts = jobPostService.getAll();
		return new ModelAndView("clients/job/showJobs", "jobPosts", jobPosts);
	}
	
//	/* For update */
//	@RequestMapping(value = "/update", method = RequestMethod.POST)
//	public ModelAndView update(HttpServletRequest request)  {
//		JobPost j = jobPostService.update(request);
//		List<JobPost> jobPosts = jobPostService.getAll();
//		return new ModelAndView("clients/job/showJobs", "jobPosts", jobPosts);
//	}
	
	/* For delete */
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable String id) {
		int pid = Integer.valueOf(id);
		JobPost j = jobPostService.delete(pid);
		List<JobPost> jobPosts = jobPostService.getAll();
		return new ModelAndView("clients/job/showJobs", "jobPosts", jobPosts);
	}
}
