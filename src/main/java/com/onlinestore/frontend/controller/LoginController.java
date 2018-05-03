package com.onlinestore.frontend.controller;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	
	@RequestMapping(value = "/login")  
	public ModelAndView showLoginPage() {  
		return new ModelAndView("login");  
	}
	
	@RequestMapping(value = "/loginSuccess")
	public ModelAndView loginSuccess(HttpSession session) {
		session.setAttribute("username", SecurityContextHolder.getContext().getAuthentication().getName());
		
		return new ModelAndView("index");
	}
	
	@RequestMapping(value = "/loginFailure")
	public ModelAndView loginFailure(HttpSession session) {
		return new ModelAndView("login", "msg", "invalid");
	}
	
	@RequestMapping(value = "/signout")
	public ModelAndView signout(HttpSession session) {
		return new ModelAndView("index");
	}
}
