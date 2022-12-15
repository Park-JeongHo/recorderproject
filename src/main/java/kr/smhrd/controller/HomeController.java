package kr.smhrd.controller;



import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.entity.TblBrd;
import kr.smhrd.mapper.TblBrdMapper;
import lombok.RequiredArgsConstructor;



@Controller
@RequiredArgsConstructor
public class HomeController {

	private final TblBrdMapper tblBrdMapper;
	
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
	public String list(Model model) {

		List<TblBrd> list = tblBrdMapper.brdList();
		model.addAttribute("list",list);
		
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
