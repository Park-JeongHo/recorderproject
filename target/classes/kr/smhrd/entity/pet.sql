select * from TBL_USER

insert into TBL_USER
values('admin1','admin1','관리자','smhrd@smhrd.com',sysdate,'1');
insert into TBL_USER
values('user1','1234','회원','user01@smhrd.com',sysdate,'0');
insert into TBL_USER
values('user2','1234','회원','user02@smhrd.com',sysdate,'0');

select * from tbl_aban where aban_seq = 0

select * from tbl_user where user_id = 'admin' and user_pw = '1234'
commit