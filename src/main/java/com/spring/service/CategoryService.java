package com.spring.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.CategoryDAO;
import com.spring.model.Category;

@Service(value = "CategoryService")
public class CategoryService {
	@Autowired
	CategoryDAO categoryDAO;
	
	public Category save(Category category){
        return categoryDAO.save(category);
    }
	
	public List<Category> getAll(){
		return categoryDAO.getAll();
	}
	
	public Category getProductById(int pid) {
        return categoryDAO.getProductById(pid);
    }
	
	public Category update(HttpServletRequest request) {
        //String name = request.getParameter("name");
        Category category = new Category();
        category.setId(Integer.valueOf(request.getParameter("id")));
        category.setCode(request.getParameter("code"));
        category.setName(request.getParameter("name")); 
        return categoryDAO.update(category);
    }
	
	 public Category delete(int pid) {
		 Category category = categoryDAO.getProductById(pid);
	        return categoryDAO.delete(category);
	    }
		
}
