package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	@RequestMapping(value="/", method=RequestMethod.GET)
	public String home()
	{
		return "homepage"; 
	}
	
	@RequestMapping(value="/contact", method=RequestMethod.GET)
	public String contact() {
		return "contact";
	}
	
	@RequestMapping(value="/about", method=RequestMethod.GET)
	public String about() {
		return "aboutus";
	}
}
