package kr.smhrd.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.entity.AbanCriteria;
import kr.smhrd.entity.AbanPageMaker;
import kr.smhrd.entity.BrdCriteria;
import kr.smhrd.entity.BrdPageMaker;
import kr.smhrd.entity.TblAban;
import kr.smhrd.entity.TblBrd;
import kr.smhrd.entity.TblDtl;
import kr.smhrd.mapper.TblAbanMapper;
import kr.smhrd.mapper.TblBrdMapper;
import kr.smhrd.mapper.TblDtlMapper;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class HomeController {

	private final TblBrdMapper tblBrdMapper;

	private final TblAbanMapper tblAbanMapper;
	
	private final TblDtlMapper tblDtlMapper;

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
	public String list(@ModelAttribute("cri") BrdCriteria cri,Model model) {

		List<TblBrd> list = tblBrdMapper.brdList(cri);
		// 페이징처리에 필요한 객체 생성
		BrdPageMaker brdPageMaker = new BrdPageMaker();
		brdPageMaker.setCri(cri);
		brdPageMaker.setTotalCount(tblBrdMapper.totalCount(cri));
		model.addAttribute("brdPageMaker",brdPageMaker);
		// 객체바인딩(View로 전달할 객체를 특정 메모리에 연결시키는 기술)
		model.addAttribute("list", list);

		return "pet/brd";
	}

	@RequestMapping("/dtl.do")

	public String detail(@ModelAttribute("cri") AbanCriteria cri, Model model) {
		List<TblDtl> list = tblDtlMapper.getList(cri);
		AbanPageMaker pageMaker = new AbanPageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(tblDtlMapper.totalCount(cri));
		model.addAttribute("AbanPageMaker", pageMaker);
		model.addAttribute("DtlList", list);
		return "pet/dtl";

	}

	@RequestMapping("/aban.do")
	public String aban(@ModelAttribute("cri") AbanCriteria cri, Model model) {
		List<TblAban> list = tblAbanMapper.getList(cri);
		AbanPageMaker pageMaker = new AbanPageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(tblAbanMapper.totalCount(cri));
		model.addAttribute("AbanPageMaker", pageMaker);

		model.addAttribute("aban_list", list);
		return "pet/aban";
	}

	@RequestMapping("/result.do")
	public String result() {

		return "pet/result";
	}
	
	@RequestMapping("/act2.do")
	public String act2() {

		return "pet/act2";

	}

}
