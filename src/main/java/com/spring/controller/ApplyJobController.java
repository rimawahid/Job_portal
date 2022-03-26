package com.spring.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.ApplyJob;
import com.spring.model.Category;
import com.spring.service.ApplyJobService;

@RestController
@RequestMapping(value = "applyjob")
public class ApplyJobController {
	@Autowired
	ApplyJobService applyJobService;
	


	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute ApplyJob applyJob, @RequestParam("img") MultipartFile file) {
		String fileName = file.getOriginalFilename().toString();
		applyJob.setAttachment("/files/"+fileName);
		try {
			
			File saveFile = new File("D:\\IDB\\Project\\job_portal\\src\\main\\webapp\\files", fileName);
			InputStream input = file.getInputStream();
			Files.copy(input, saveFile.toPath());
			applyJobService.save(applyJob);
//			System.out.println(fileName);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		

		return null;
	}

//	@RequestMapping(value = "/save", method = RequestMethod.POST)
//	public ModelAndView save(@ModelAttribute("apply") ApplyJob applyJob) {
//		//System.out.println(category.getCode());
//		ApplyJob c = applyJobService.save(applyJob);
//		
//		return null;
//	}
	
	
}
