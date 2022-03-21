package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Category;
import com.spring.service.CategoryService;

@RestController
@RequestMapping(value = "client")
public class ClientController {
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView index() {
		return new ModelAndView("clients/home");
	}

//	@RequestMapping(value = "/postjob", method = RequestMethod.GET)
//	public ModelAndView postAJob() {
//		List<Category> categories = categoryService.getAll();
//	return new ModelAndView("clients/job/postJob", "categories", categories);
//	}


}
