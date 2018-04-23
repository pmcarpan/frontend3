package com.onlinestore.frontend.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.onlinestore.backend.dao.UserDAO;

@Controller
public class LoginController {
	
	@Autowired
	private UserDAO uDAO;
	
	@RequestMapping(value = "/login")  
	public ModelAndView showLoginPage() {  
		System.out.println("from login controller");  
		return new ModelAndView("login");  
	}
	
//	@RequestMapping(value = "/loginUser", method = RequestMethod.POST)
//	public ModelAndView loginUser(@ModelAttribute("user") User user, BindingResult result, 
//									HttpSession session) {
//		System.out.println("username=" + user.getUsername() + " -- password=" + user.getPassword());
//		
//		if (uDAO.validate(user.getUsername(), user.getPassword())) {
//			ModelAndView mv = new ModelAndView("index");
//			if (user.getUsername().equals("arpan123")) {
//				System.out.println("login controller -- Admin verified");
//				session.setAttribute("adminLoggedIn", true);
//				session.setAttribute("adminView", "");
//				// mv.addObject("adminLoggedIn", true);
//			}
//			else {
//				System.out.println("login controller -- User Verified");
//				session.setAttribute("userLoggedIn", true);
//				// mv.addObject("userLoggedIn", true);
//			}
//			session.setAttribute("username", user.getUsername());
//			
//			return mv;
//		}
//		else {
//			return new ModelAndView("login", "msg", "invalid");
//		}
//	}
	
	@RequestMapping(value = "/loginSuccess")
	public ModelAndView loginSuccess(HttpSession session) {
		System.out.println("login success");
		session.setAttribute("username", SecurityContextHolder.getContext().getAuthentication().getName());
		
		return new ModelAndView("index");
	}
	
	@RequestMapping(value = "/loginFailure")
	public ModelAndView loginFailure(HttpSession session) {
		return new ModelAndView("login", "msg", "invalid");
	}
	
	@RequestMapping(value = "/signout")
	public ModelAndView signout(HttpSession session) {
//		session.setAttribute("adminLoggedIn", false);
//		session.setAttribute("userLoggedIn", false);
//		session.setAttribute("username", "");
//		session.setAttribute("cart", null);
//		session.setAttribute("orders", null);
		
		return new ModelAndView("index");
	}
}
