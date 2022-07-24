package com.spring.controller.flutter;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.spring.model.JobPost;
import com.spring.service.CategoryService;
import com.spring.service.JobPostService;


@RestController
@RequestMapping(value = "_jobpost")
public class _JobPostController {
	 @Autowired
	 CategoryService categoryService;
	    
	    @Autowired
	    JobPostService jobPostService;
	   
	    
	    @RequestMapping(value = "/showJobs", method = RequestMethod.GET)
	    public List<JobPost> view(){
	        List<JobPost> jobPosts = jobPostService.getAll();
	        return jobPosts;
	    }
	    
}
