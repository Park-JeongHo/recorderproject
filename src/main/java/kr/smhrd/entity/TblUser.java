package kr.smhrd.entity;

import java.util.Date;

import lombok.Data;

@Data
public class TblUser {

	 // 사용자 아이디 
    private String user_id;

    // 사용자 비밀번호 
    private String user_pw;

    // 사용자 이름 
    private String user_name;

    // 사용자 이메일 
    private String user_email;

    // 회원 가입일자 
    private Date mb_joindate;

    // 사용자 유형 
    private String user_type;
}
