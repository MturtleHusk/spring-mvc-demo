package com.luv2code.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller // tells spring this is a mvc controller
public class HomeController {

	
	//  define controller method
	@RequestMapping("/")
	public String showPage() {
		return "main-menu"; // the name of the page to return
	}
	

	
	
}
