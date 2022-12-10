package kr.smhrd.entity;

import java.util.Date;

import lombok.Data;

@Data
public class TblAct {

    // 행동 번호 
    private int actn_seq;

    // 행동 상태 
    private String actn_state;

    // 행동 분류 
    private String actn_clsfc;

    // 행동 감정 
    private String actn_emtn;

    // 행동 날짜 
    private Date actn_date;

    // 사용자 아이디 
    private String user_id;
}
