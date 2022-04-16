package com.spring.controller.freelancer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.ApplyJob;
import com.spring.model.JobPost;
import com.spring.service.ApplyJobService;
import com.spring.service.JobPostService;

@RestController
@RequestMapping(value = "freelancer")
public class FreelancerJobsConrtoller {
	@Autowired
	ApplyJobService applyJobService;
	
	@Autowired
	JobPostService jobPostService;

	@RequestMapping(value = "/jobs", method = RequestMethod.GET)
	public ModelAndView jobs() {
		List<ApplyJob> applyJob = applyJobService.findByApproved(null);
		//System.out.println(applyJob);
		return new ModelAndView("freelancer/job/myjobs", "applyJob", applyJob);
	}
	
	@RequestMapping(value = "/submitjob/{id}", method = RequestMethod.GET)
    public ModelAndView submit(@PathVariable String id){
        int pid = Integer.valueOf(id);
        JobPost jobPost = jobPostService.getById(pid);
        return new ModelAndView("freelancer/findWork/submitjobs", "jobPost", jobPost);
    }
}
