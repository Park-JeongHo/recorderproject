package kr.smhrd.entity;

import lombok.Data;

@Data
public class AbanPageMaker {

	private AbanCriteria cri;
	private int totalCount;
	private int displayPageNum = 10;
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		makePaging();
	}
	
	private void makePaging() {
		// 1. 화면에 보여질 마지막 페이지 번호 구하기
		endPage = (int)(Math.ceil(cri.getPage() / (double)displayPageNum) * displayPageNum);
		// 2. 화면에 보여질 시작 페이지 번호 구하기
		startPage = (endPage - displayPageNum) + 1;
		if(startPage <= 0) startPage = 1;
		// 3. 전체 마지막 페이지를 계산(실제 계산)
		int tmpEndPage = (int)(Math.ceil(totalCount / (double)cri.getPerPageNum()));
		// 4. 화면에 보여질 마지막 페이지 유효성 체크
		if(endPage > tmpEndPage) {
			endPage = tmpEndPage;
		}
		// 5. 이전버튼의 존재 여부
		prev = (startPage != 1) ? true : false;
		// 6. 다음 버튼의 존재 여부
		next = (endPage < tmpEndPage) ? true : false;
	}
	
}
