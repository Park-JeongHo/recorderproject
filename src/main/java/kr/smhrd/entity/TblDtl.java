package kr.smhrd.entity;

import lombok.Data;

@Data
public class TblDtl {

	 // 상세 번호 
    private int dtl_seq;

    // 상세 제목 
    private String dtl_title;

    // 상세 정보 
    private String dtl_info;

    // 상세 관리 
    private String dtl_mgmt;

    // 상세 분류 
    private String dtl_clsfc;

    // 관리자 아이디 
    private String admin_id;
}
