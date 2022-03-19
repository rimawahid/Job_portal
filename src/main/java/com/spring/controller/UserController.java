package com.spring.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


import com.spring.model.User;
import com.spring.service.UserService;

@RestController
//@RequestMapping(value = "user")
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
    
    
    
    
    
}
