select * from TBL_BRD

insert into TBL_USER
values('admin1','admin1','관리자','smhrd@smhrd.com',sysdate,'1');
insert into TBL_USER
values('user1','1234','회원','user01@smhrd.com',sysdate,'0');
insert into TBL_USER
values('user2','1234','회원','user02@smhrd.com',sysdate,'0');

select * from tbl_aban where aban_seq = 0

select * from tbl_user where user_id = 'admin' and user_pw = '1234'

CREATE SEQUENCE brd_seq
       INCREMENT BY 1
       START WITH 1
       MINVALUE 1
       MAXVALUE 9999
       NOCYCLE
       NOCACHE
       NOORDER;

select * from TBL_BRD
insert into TBL_BRD(brd_seq,brd_title,brd_content,user_id,brd_date,brd_img)
values(brd_seq.NEXTVAL,'타이틀1','콘텐츠1','1231',sysdate,'이미지1')
commit

delete from tbl_brd