package kr.smhrd.entity;

import lombok.Data;

@Data
public class BrdCriteria {
	private int page; // 현재 페이지번호
	private int perPageNum; // 한페이지의 보여줄 게시글의 수
	// 검색기능에 추가
	private String type;
	private String keyword;

	public BrdCriteria() {
		this.page = 1;
		this.perPageNum = 12;  // 조정
	}

	// 현재 페이지의 게시글의 시작번호(중요)
	// select * from reply order by boardGroup desc, boardSequence asc limit
	// #{pageStart},#{perPageNum}
	public int getPageStart() {
		return (page - 1) * perPageNum; //
	}
	public int getPageEnd() {
		return perPageNum*page;
	}

}
