package com.spring.controller.freelancer;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.ApplyJob;
import com.spring.model.FreelancerProfile;
import com.spring.model.JobPost;
import com.spring.model.SubmitProject;
import com.spring.service.ApplyJobService;
import com.spring.service.JobPostService;
import com.spring.service.SubmitProjectService;

@RestController
@RequestMapping(value = "freelancer")
public class FreelancerJobsConrtoller {
	@Autowired
	ApplyJobService applyJobService;
	
	@Autowired
	JobPostService jobPostService;
	
	@Autowired
	SubmitProjectService submitProjectService;

	@RequestMapping(value = "/jobs", method = RequestMethod.GET)
	public ModelAndView jobs() {
		List<ApplyJob> applyJob = applyJobService.findByApproved(null);
		//System.out.println(applyJob);
		return new ModelAndView("freelancer/job/myjobs", "applyJob", applyJob);
	}
	
	@RequestMapping(value = "/submitjob/{id}", method = RequestMethod.GET)
    public ModelAndView submit(@PathVariable String id){
        int pid = Integer.valueOf(id);
        //JobPost jobPost = jobPostService.getById(pid);
        ApplyJob applyJob = applyJobService.getById(pid);
        return new ModelAndView("freelancer/findWork/submitjobs", "applyJob", applyJob);
    }
	
	/* For add */
	@RequestMapping(value = "submitproject/save", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute SubmitProject submitProject,
			@RequestParam("img") MultipartFile file) {
		String fileName = file.getOriginalFilename().toString();
		submitProject.setAttachment("/files/submitProject/" + fileName);
		try {
			File saveFile = new File("D:\\IDB\\Project\\job_portal\\src\\main\\webapp\\files\\submitProject", fileName);
			InputStream input = file.getInputStream();
			Files.copy(input, saveFile.toPath());
			submitProjectService.save(submitProject);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
}
