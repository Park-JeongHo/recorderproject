package kr.smhrd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.entity.TblUser;
import kr.smhrd.mapper.TblUserMapper;

@Controller
public class TblUserController {

	@Autowired // DI(의존성 주입)
	private TblUserMapper tblUserMapper;

	@RequestMapping("/main.do")
	public String home() {

		return "pet/list";
	}

	@RequestMapping("/list.do")
	public String list(Model model) {

		List<TblUser> list = tblUserMapper.getList(); // 객체바인딩(View로 전달할 객체를 특정 메모리 연결시키는 기술)
		model.addAttribute("list", list);

		return "pet/list"; 
		// (forward) -->ViewResolver /WEB-INF/views/board/list.jsp
	}

}
