package com.spring.controller.admin;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Category;
import com.spring.model.FreelancerProfile;
import com.spring.model.PaymentMethod;
import com.spring.service.PaymentService;

@RestController
@RequestMapping(value = "payment")
public class PaymentMethodController {
	@Autowired
	PaymentService paymentService;
	
	@RequestMapping(value="", method=RequestMethod.GET)
	public ModelAndView addPaymentMethod() {
		return new ModelAndView ("admin/payment/addPaymentMethod");
	}
	
	
	/* For add */
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute PaymentMethod paymentMethod,
			@RequestParam("img") MultipartFile file) {
		String fileName = file.getOriginalFilename().toString();
		paymentMethod.setPaymentImage("/files/paymentMethod/" + fileName);
		try {
			File saveFile = new File("D:\\IDB\\Project\\job_portal\\src\\main\\webapp\\files\\paymentMethod", fileName);
			InputStream input = file.getInputStream();
			Files.copy(input, saveFile.toPath());
			paymentService.save(paymentMethod);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/* For show */
	@RequestMapping(value = "/allmethod", method = RequestMethod.GET)
	public ModelAndView view() {
		//List<PaymentMethod> paymentMethod = paymentService.getAll();
		return new ModelAndView("admin/payment/allPaymentMethod");
	}
}
