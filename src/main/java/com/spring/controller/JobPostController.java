package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Category;
import com.spring.model.JobPost;
import com.spring.service.CategoryService;
import com.spring.service.JobPostService;



@RestController
@RequestMapping(value = "client")
public class JobPostController {

	@Autowired
	//CategoryService categoryService;
	JobPostService jobPostService;

	/* For show Category */
//	@RequestMapping(value = "/postjob", method = RequestMethod.GET)
//	public ModelAndView view() {
//		List<Category> categories = categoryService.getAll();
//		return new ModelAndView("clients/job/postJob", "categories", categories);
//	}
	
	/* For add */

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute JobPost jobpost) {
		//System.out.println(jobpost.getDelivaryDeadline()+"job");
		System.out.println(jobpost.getBudgetType()+"job");
		JobPost c = jobPostService.save(jobpost);
		return null;
	}
}
