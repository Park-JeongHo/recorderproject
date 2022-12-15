package kr.smhrd.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.entity.TblUser;
import kr.smhrd.mapper.TblUserMapper;

@Controller
public class TblUserController {
	@Autowired
	private TblUserMapper tblUserMapper;
	
	@RequestMapping("/login.do")
	public String login(TblUser vo, HttpSession session) {
		TblUser m = tblUserMapper.login(vo);

		if (m != null) {
			// 회원인증에 성공~
			session.setAttribute("m", m); // ${m}
			return "redirect:/home.do";
		}else {
			
			return "redirect:/main.do";
		}
		
		

	}

	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();

		return "redirect:/main.do";

	}
	@RequestMapping("/join.do")
	public String join(TblUser vo) {
		tblUserMapper.join(vo);

		return "redirect:/main.do";

	}
}
