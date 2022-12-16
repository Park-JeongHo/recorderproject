package kr.smhrd.entity;

import lombok.Data;

@Data
public class AbanCriteria {

	private int page;
	private int perPageNum;
	private String type;
	private String location;
	private String keyword;
	
	public AbanCriteria() {
		this.page = 1;
		this.perPageNum = 10;
	}
	
	public int getPageStart() {
		return ((page - 1) * perPageNum)+1;
	}
	
	public int getPageEnd() {
		return perPageNum*page;
	}
}
