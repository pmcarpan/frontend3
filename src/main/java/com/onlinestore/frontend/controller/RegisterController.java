package com.onlinestore.frontend.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.onlinestore.backend.dao.UserDAO;
import com.onlinestore.backend.model.User;

@Controller
public class RegisterController {
	
	@Autowired
	private UserDAO uDAO;
	
	@RequestMapping("/register")  
	public ModelAndView showRegisterPage() {  
		System.out.println("from register controller");  
		
		return new ModelAndView("register");  
		// return new ModelAndView("register", "user", new User());  
	}
	
	@RequestMapping(value = "/registerUser", method = RequestMethod.POST)
    public ModelAndView registerUser(@ModelAttribute("user") @Valid User user, BindingResult result) {
		if (uDAO.getUser(user.getUsername()) != null) {
			result.rejectValue("username", "error.user", "Username already exists, choose a different username");
		}
		
        if (result.hasErrors()) {
        	return new ModelAndView("register"); 
        }
		System.out.println("from register controller -- registering user"); 
		System.out.println(user.getUsername() + " -- " + user.getPassword()); 
		
		uDAO.saveOrUpdate(user);
		
		return new ModelAndView("login", "msg", "registerSuccess");
    }
}
