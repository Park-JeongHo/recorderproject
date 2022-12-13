package kr.smhrd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.smhrd.entity.TblAban;
import kr.smhrd.mapper.TblAbanMapper;

@RestController
public class TblAbanRestController {

	@Autowired
	private TblAbanMapper tblAbanMapper;
	
	@RequestMapping("/randomAbanList.do")
	public List<TblAban> list(){
		List<TblAban> list = tblAbanMapper.randomList();
		return list; // List<Board> -> JSON
	}
}
