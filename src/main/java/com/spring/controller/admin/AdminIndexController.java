package com.spring.controller.admin;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class AdminIndexController {
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView index() {
		return new ModelAndView("admin/admin");
	}
}
