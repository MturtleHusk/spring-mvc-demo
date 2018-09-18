package com.luv2code.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloWorldController {
	
	// need a controller to show initial form
	@RequestMapping("/showForm")
	public String showForm() {
		return "helloworld-form";		
	}
	
	// need a controller to process the HTML form

}
