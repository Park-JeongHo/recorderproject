package kr.smhrd.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.entity.AbanCriteria;
import kr.smhrd.entity.AbanPageMaker;
import kr.smhrd.entity.TblDtl;
import kr.smhrd.mapper.TblDtlMapper;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class TblDtlController {

	private final TblDtlMapper tblDtlMapper;
	
	/*
	 * @RequestMapping("/detail.do") public String detail(@ModelAttribute("cri")
	 * AbanCriteria cri, Model model) { List<TblDtl> list =
	 * tblDtlMapper.getList(cri); AbanPageMaker pageMaker = new AbanPageMaker();
	 * pageMaker.setCri(cri); pageMaker.setTotalCount(tblDtlMapper.totalCount(cri));
	 * model.addAttribute("AbanPageMaker", pageMaker); model.addAttribute("DtlList",
	 * list); return "pet/dtl"; }
	 */
	
	@GetMapping("/get.do")
	public String get(int dtl_seq, Model model) {
		TblDtl dtl = tblDtlMapper.get(dtl_seq);
		model.addAttribute("dtl", dtl);
		return "pet/get";
	}
	
}
