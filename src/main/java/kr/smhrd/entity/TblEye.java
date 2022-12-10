package kr.smhrd.entity;

import java.util.Date;

import lombok.Data;

@Data
public class TblEye {

	// 안구 번호 
    private int eye_seq;

    // 안구 분류 
    private String eye_clsfc;

    // 안구 질환 
    private String eye_dss;

    // 안구 날짜 
    private Date eye_date;
    
    // 사용자 아이디 
    private String user_id;
}
