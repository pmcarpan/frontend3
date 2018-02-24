package onlinestore.frontend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	@RequestMapping("/login")  
	public ModelAndView showLoginPage() {  
		System.out.println("from login controller");  
		return new ModelAndView("Login");  
	}
}
