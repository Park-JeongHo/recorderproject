package kr.smhrd.mapper;


import kr.smhrd.entity.TblUser;

public interface TblUserMapper {

	
	public TblUser login(TblUser vo);
	
	public void join(TblUser vo);
}
