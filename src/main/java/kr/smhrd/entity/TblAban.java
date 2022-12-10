package kr.smhrd.entity;

import lombok.Data;

@Data
public class TblAban {

    // 유기 순번 
    private Double aban_seq;

    // 유기 지역 
    private String aban_area;

    // 유기 성별 
    private String aban_gender;

    // 유기 이미지 
    private String aban_img;

    // 관리자 아이디 
    private String admin_id;

    // 유기 품종 
    private String aban_vrty;

    // 유기 분류 
    private String aban_clsfc;
}
