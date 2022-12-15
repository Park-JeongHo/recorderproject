package kr.smhrd.mapper;


import java.util.List;

import kr.smhrd.entity.TblBrd;

public interface TblBrdMapper {

	
	public void brdRegister(TblBrd vo);
	
	public List<TblBrd> brdList(); 
}
