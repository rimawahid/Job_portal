package com.spring.controller.freelancer;

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
import com.spring.model.User;
import com.spring.service.JobPostService;

@RestController
@RequestMapping(value = "freelancer")
public class FindWorkController {
	
	@Autowired
	JobPostService jobPostService;
	
	@RequestMapping(value = "/findwork", method = RequestMethod.GET)
	public ModelAndView findWork() {
		return new ModelAndView("freelancer/findWork/findwork");
	}
	
	
	//search subcategory through category
//		@RequestMapping(value = "/findworks/{skill}", method = RequestMethod.POST)
//		public List<JobPost> getValue(HttpServletRequest request, @PathVariable("skill") String skill) {
//			return jobPostService.searchBySkills(skill);
//		}
//	
//	@RequestMapping(value = "/findwork", method = RequestMethod.GET)
//	public ModelAndView jobs() {
//		List<JobPost> jobpost = jobPostService.searchBySkills(null);
//		System.out.println(jobpost +".....");
//		return new ModelAndView("freelancer/findWork/findwork", "jobpost", jobpost);
//	}
	
	
	@RequestMapping(value = "/proposals", method = RequestMethod.GET)
	public ModelAndView proposals() {
		return new ModelAndView("freelancer/findWork/proposals");
	}

}
