package com.spring.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Category;
import com.spring.model.User;
import com.spring.service.UserService;

@RestController
@RequestMapping(value = "user")
public class UserController {
	@Autowired
	UserService userService;
	
				/* For Sign up */
	
	@RequestMapping(value = "/singup", method = RequestMethod.GET)
	public ModelAndView signUp() {
		return new ModelAndView("front-end/signup");
	}
	 
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(@ModelAttribute User user){
    	System.out.println(user.getFirstName());
    //System.out.println(user.getPrice());
    //	System.out.println(user.getQuantity());
//    	System.out.println(request.getParameter("name"));
//    	System.out.println(request.getParameter("quantity"));
//    	System.out.println(request.getParameter("price"));
        User u = userService.save(user);
        return null;
    }
    
			/* For login */
    
    @RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login() {
		return new ModelAndView("front-end/login");
	}
    
   
    @RequestMapping(value="/login-user", method = RequestMethod.POST)
    public ModelAndView loginUser(@ModelAttribute User user) {
    	if(userService.findByUsernameAndPassword(user.getEmail())!= null) {
    		return new ModelAndView("admin/admin");
    	}else {
    		
			return new ModelAndView("front-end/login");
    	}
    }
    
    
	/* For All Clients */
	@RequestMapping(value = "/client", method = RequestMethod.GET)
	public ModelAndView viewClient() {
		List<User> users = userService.findByClient(null);
		System.out.println(users);
		return new ModelAndView("admin/users/clients", "users", users);
	}
	
	/* For All Freelancer */
	@RequestMapping(value = "/freelancer", method = RequestMethod.GET)
	public ModelAndView viewFreelancer() {
		List<User> users = userService.findByFreelancer(null);
		System.out.println(users);
		return new ModelAndView("admin/users/freelancers", "users", users);
	}
	

	/* For delete Client*/
	@RequestMapping(value = "/delete/client/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable String id) {
		int pid = Integer.valueOf(id);
		User p = userService.delete(pid);
		List<User> users = userService.findByClient(id);
		return new ModelAndView("admin/users/clients", "users", users);
	}
	
	/* For delete Freelancer*/
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public ModelAndView deletefreelancer(@PathVariable String id) {
		int pid = Integer.valueOf(id);
		User p = userService.delete(pid);
		List<User> users = userService.findByClient(id);
		return new ModelAndView("admin/users/freelancers", "users", users);
	}
    
}
