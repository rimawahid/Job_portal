package com.spring.controller.freelancer;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import com.spring.model.SavedJobs;
import com.spring.service.JobPostService;
import com.spring.service.SavedJobsService;

@RestController
@RequestMapping(value = "freelancer")
public class SavedJobController {
	@Autowired
	SavedJobsService savedJobsService;

	@Autowired
	JobPostService jobPostService;

	@RequestMapping(value = "/savedjob", method = RequestMethod.POST)
	public ModelAndView save(HttpServletRequest r, @ModelAttribute SavedJobs savedJobs) {
		SavedJobs b = savedJobsService.save(savedJobs, r);
//		System.out.println(b);
//		System.out.println(savedJobs.getCategory() + "...........");
		List<SavedJobs> bList = savedJobsService.getAll();
		return new ModelAndView("redirect:/freelancer/getsavedjob");
	}

	@RequestMapping(value = "/getsavedjob", method = RequestMethod.GET)
	public ModelAndView getSavedJobs() {
		List<SavedJobs> bList = savedJobsService.getAll();

		return new ModelAndView("freelancer/findWork/savedJob", "bList", bList);
	}

}
