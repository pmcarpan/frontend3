package com.onlinestore.frontend.exception;

import java.util.Date;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class GlobalExceptionHandler {

	@ResponseStatus(value= HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler(value = Exception.class)
	public ModelAndView handleException(Exception e) {
		ModelAndView mv = new ModelAndView("error-page");
		mv.addObject("timestamp", new Date());
		mv.addObject("msg", e.toString());
		
		System.out.println("GlobalExceptionHandler handleException");
		e.printStackTrace();
		
		return mv;
	}
	
}
