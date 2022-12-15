package kr.smhrd.entity;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class TblBrd {


	// 게시글 번호 
    private int brd_seq;

    // 게시글 제목 
    private String brd_title;

    // 게시글 내용 
    private String brd_content;

    // 사용자 아이디 
    private String user_id;

    // 게시글 이미지 
    private String brd_img;

    // 게시글 날짜 
    private Date brd_date;
    
    
}
