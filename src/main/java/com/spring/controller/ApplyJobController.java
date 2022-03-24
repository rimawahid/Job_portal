package com.spring.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

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

import com.spring.service.ApplyJobService;


@RestController
@RequestMapping(value = "applyjob")
public class ApplyJobController {
	@Autowired
	ApplyJobService applyJobService;
	
	
	public static String uploadDirectory = System.getProperty("user.dir") + "/src/main/webapp/imagedata";

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	@ResponseBody
	//public String saveStudent(Student stu,@RequestParam("img") MultipartFile file) 
	public ModelAndView save(@ModelAttribute ApplyJob applyJob,@RequestParam("img") MultipartFile file){
		
		StringBuilder fileNames = new StringBuilder();
		String filename=applyJob.getId() + file.getOriginalFilename().substring(file.getOriginalFilename().length()-4);
		Path fileNameAndPath =Paths.get(uploadDirectory,filename);
		try {
			Files.write(fileNameAndPath, file.getBytes());
		} catch (IOException e) {
			e.printStackTrace();
		}
		applyJob.setAttachment(filename);
		applyJobService.save(applyJob);
		return null;
	}
}
