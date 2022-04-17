package com.spring.controller.client;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.ApplyJob;
import com.spring.model.ApprovedStatus;
import com.spring.model.Category;
import com.spring.model.JobPost;
import com.spring.model.RejectedStatus;
import com.spring.model.SubmitProject;
import com.spring.service.ApplyJobService;
import com.spring.service.CategoryService;
import com.spring.service.JobPostService;
import com.spring.service.SubmitProjectService;

@RestController
@RequestMapping(value = "client")
public class ClientController {
	@Autowired
	CategoryService categoryService;
	@Autowired
	ApplyJobService applyJobService;

	@Autowired
	JobPostService jobPostService;

	@Autowired
	SubmitProjectService submitProjectService;

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView index() {
		return new ModelAndView("clients/home");
	}

	/* For show */
	@RequestMapping(value = "/submittedproject", method = RequestMethod.GET)
	public ModelAndView view() {
		List<SubmitProject> submitProject = submitProjectService.getAll();
		return new ModelAndView("clients/job/submittedJob", "submitProject", submitProject);
	}

	@RequestMapping(value = "/submittedproject/received/{code}", method = RequestMethod.GET)
	public ModelAndView update(HttpServletRequest request, @PathVariable("code") String code) {
		JobPost jobpost = jobPostService.getBYCode(code);
		JobPost p = jobPostService.updatedoneStatus(jobpost);
		List<SubmitProject> submitProject = submitProjectService.getAll();
		return new ModelAndView("clients/job/submittedJob", "submitProject", submitProject);

	}


}
