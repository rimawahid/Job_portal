package com.spring.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Category;

import com.spring.service.CategoryService;

@RestController
@RequestMapping(value = "category")
public class CategoriesController {

	@Autowired
	CategoryService categoryService;

	@RequestMapping(value = "", method = RequestMethod.GET)
	public ModelAndView signUp() {
		return new ModelAndView("admin/categories/addCategories");
	}

	/* For add */

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute Category category) {
		//System.out.println(category.getCode());
		Category c = categoryService.save(category);
		List<Category> categories = categoryService.getAll();
		return new ModelAndView("admin/categories/showCategories", "categories", categories);
	}

	/* For show */
	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public ModelAndView view() {
		List<Category> categories = categoryService.getAll();
		return new ModelAndView("admin/categories/showCategories", "categories", categories);
	}

	/* for edit */
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public ModelAndView edit(@PathVariable String id) {
		int pid = Integer.valueOf(id);
		Category c = categoryService.getProductById(pid);
		return new ModelAndView("admin/categories/updateCategories", "c", c);
	}

	/* For update */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView update(HttpServletRequest request) {
		Category p = categoryService.update(request);
		List<Category> categories = categoryService.getAll();
		return new ModelAndView("admin/categories/showCategories", "categories", categories);

	}

	/* For delete */
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable String id) {
		int pid = Integer.valueOf(id);
		Category p = categoryService.delete(pid);
		List<Category> categories = categoryService.getAll();
		return new ModelAndView("admin/categories/showCategories", "categories", categories);
	}
}
