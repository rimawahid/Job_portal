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

import com.spring.model.FreelancerProfile;

import com.spring.service.FreelancerProfileService;

@RestController
@RequestMapping(value = "freelancer/profile")
public class FreelancerProfileController {

	@Autowired
	FreelancerProfileService freelancerProfileService;

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView showProfile() {
		return new ModelAndView("freelancer/profile/addProfile");
	}

	/* For add */
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute FreelancerProfile freelancerProfile,
			@RequestParam("img") MultipartFile file) {
		String fileName = file.getOriginalFilename().toString();
		freelancerProfile.setProfileImg("/files/fprofile/" + fileName);
		try {
			File saveFile = new File("D:\\IDB\\Project\\job_portal\\src\\main\\webapp\\files\\fprofile", fileName);
			InputStream input = file.getInputStream();
			Files.copy(input, saveFile.toPath());
			freelancerProfileService.save(freelancerProfile);
			//System.out.println(fileName);
			//System.out.println(freelancerProfile.getTitle());
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
//	/* For show */
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public ModelAndView view() {
//		List<FreelancerProfile> fProfile = freelancerProfileService.getAll();
//		return new ModelAndView("freelancer/profile/showProfile", "fProfile", fProfile);
//	}
	
	@RequestMapping(value = "/show", method = RequestMethod.GET)
    public ModelAndView view(@PathVariable String id){
        int pid = Integer.valueOf(id);
        FreelancerProfile fProfile = freelancerProfileService.getProductById(pid);
        return new ModelAndView("freelancer/profile/showProfile", "fProfile", fProfile);
    }
}
