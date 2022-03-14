package com.spring.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class AdminIndexController {
	@RequestMapping(value = "/admin/index", method = RequestMethod.GET)
	public ModelAndView index() {
		return new ModelAndView("admin/index");
	}
}
