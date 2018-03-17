package com.onlinestore.frontend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ContactController {
	@RequestMapping("/contact")  
	public ModelAndView showContactPage() {  
		System.out.println("from contact controller");  
		return new ModelAndView("contact-us");  
	}
}
