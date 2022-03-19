package com.spring.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.UserDAO;

import com.spring.model.User;


@Service(value = "UserService")
public class UserService {
	@Autowired
	UserDAO userDAO;
	
	/*
	 * public User save(HttpServletRequest request){ String firstname =
	 * request.getParameter("firstName"); User user = new User();
	 * user.setFirstName(firstname);
	 * user.setLastName(request.getParameter("lastName"));
	 * user.setPassword(request.getParameter("password"));
	 * user.setRole(request.getParameter("role"));
	 * user.setCountry(request.getParameter("country")); return userDAO.save(user);
	 * };
	 */
	
	public User save(User u){
        return userDAO.save(u);
    }
	
	public User findByUsernameAndPassword(String email) {
		return userDAO.findByUsernameAndPassword(email);
	}
}
