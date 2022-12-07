package kr.smhrd.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class PetController { 

	@RequestMapping("/main.do")
	public String home() {
		
		return "pet/list";
	}
	
}
