package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.ApplyJob;
import com.spring.service.ApplyJobService;

@RestController
@RequestMapping(value = "freelancer")
public class FreelancerJobsConrtoller {
	@Autowired
	ApplyJobService applyJobService;

	@RequestMapping(value = "/jobs", method = RequestMethod.GET)
	public ModelAndView jobs() {
		List<ApplyJob> applyJob = applyJobService.findByApproved(null);
		System.out.println(applyJob);
		return new ModelAndView("freelancer/job/myjobs", "applyJob", applyJob);
	}
}
