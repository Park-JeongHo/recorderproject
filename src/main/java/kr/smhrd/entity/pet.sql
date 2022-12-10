select * from TBL_USER

insert into TBL_USER
values('admin','1234','관리자','smhrd@smhrd.com',sysdate,'1');
insert into TBL_USER
values('user1','1234','회원','user01@smhrd.com',sysdate,'0');
insert into TBL_USER
values('user2','1234','회원','user02@smhrd.com',sysdate,'0');

select * from tbl_aban
commit