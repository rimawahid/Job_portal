package com.spring.controller.impl;

import org.springframework.web.servlet.ModelAndView;

import com.spring.common.ICommonController;

public interface IUserController extends ICommonController{
	public ModelAndView getById(String id);
	public ModelAndView findByUsernameOrEmail(String email,String firstName);
}
