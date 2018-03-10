package com.onlinestore.frontend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	@RequestMapping("/")  
	public ModelAndView showHomePage() {  
		System.out.println("from home controller");  
		return new ModelAndView("index");  
	} 
}
