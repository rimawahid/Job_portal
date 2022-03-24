package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.JobPost;
import com.spring.service.JobPostService;

public class ProposalController {
	@Autowired
	JobPostService jobPostService;
	
	@RequestMapping(value = "/details/{id}", method = RequestMethod.GET)
    public ModelAndView jobapply(@PathVariable String id){
        int pid = Integer.valueOf(id);
        JobPost jobPost = jobPostService.getProductById(pid);
        return new ModelAndView("front-end/jobDetails", "jobPost", jobPost);
    }
}
