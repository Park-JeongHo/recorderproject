package kr.smhrd.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.smhrd.entity.TblAban;
import kr.smhrd.entity.TblBrd;
import kr.smhrd.entity.TblDtl;
import kr.smhrd.mapper.TblBrdMapper;

@Controller
public class TblBrdController {

	@Autowired
	private TblBrdMapper tblBrdMapper;
	
	@RequestMapping("/brdRegister.do")
	public String brdRegister(MultipartHttpServletRequest request) {
		TblBrd vo = new TblBrd();
		vo.setUser_id(request.getParameter("user_id"));
		vo.setBrd_title(request.getParameter("brd_title"));
		vo.setBrd_content(request.getParameter("brd_content"));
		
		// 파일업로드
		MultipartFile mf = request.getFile("brd_img");
		String path = request.getRealPath("resources/img/brdimg");
		String fileName = mf.getOriginalFilename();
		File uploadFile = new File(path+"//"+fileName);
		
		try {
			mf.transferTo(uploadFile);
		}catch(IllegalStateException e) {
			e.printStackTrace();
		}catch(IOException e) {
			e.printStackTrace();
		}
		
		vo.setBrd_img(fileName);
		
		tblBrdMapper.brdRegister(vo);
		
		
		return "redirect:/brd.do";
	}
	@GetMapping("/brdSelect.do/{brd_seq}")   // /5
	public String get(@PathVariable int brd_seq,Model model) {
		TblBrd vo = tblBrdMapper.selectOne(brd_seq);
		
		
		model.addAttribute("vo",vo);
		return "pet/brdSelect";
	}
	
	
	
}
