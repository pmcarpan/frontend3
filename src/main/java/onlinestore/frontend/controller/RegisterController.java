package onlinestore.frontend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegisterController {
	@RequestMapping("/register")  
	public ModelAndView showRegisterPage() {  
		System.out.println("from register controller");  
		return new ModelAndView("Register");  
	}
}
