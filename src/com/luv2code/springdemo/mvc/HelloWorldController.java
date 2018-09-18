package com.luv2code.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloWorldController {
	
	// need a controller to show initial form
	@RequestMapping("/showForm")
	public String showForm() {
		return "helloworld-form";		
	}
	
	// need a controller to process the HTML form
	@RequestMapping("/processForm") // stated in the jsp to send data to this url
	public String processForm() {
		return "helloworld";		
	}
	
	// new controller method to read from data
	// add data to the model
	@RequestMapping("/processFormVersionTwo")
	public String letsShoutDude(HttpServletRequest request, Model model) {
		
		// read request Param from html
		String theName = request.getParameter("studentName");
		// convert to all caps
		theName = theName.toUpperCase();
		// create message
		String result = "Yo!" + theName;
		
		// add message to model
		model.addAttribute("message", result);
		return "helloworld";
	}
}
