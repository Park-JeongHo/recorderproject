package kr.smhrd.controller;



import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class HomeController {


	@RequestMapping("/main.do")
	public String main() {

		return "pet/main";
	}
	@RequestMapping("/home.do")
	public String home() {

		return "pet/home";
	}
	@RequestMapping("/act.do")
	public String act() {

		return "pet/act";
	}
	@RequestMapping("/eye.do")
	public String eye() {

		return "pet/eye";
	}
	@RequestMapping("/brd.do")
	public String brd() {

		return "pet/brd";
	}
	@RequestMapping("/dtl.do")
	public String dtl() {

		return "pet/dtl";
	}
	@RequestMapping("/aban.do")
	public String aban() {

		return "pet/aban";
	}

	

}
