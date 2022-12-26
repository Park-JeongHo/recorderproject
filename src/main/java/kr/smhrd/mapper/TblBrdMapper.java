package kr.smhrd.mapper;


import java.util.List;

import kr.smhrd.entity.BrdCriteria;
import kr.smhrd.entity.TblBrd;

public interface TblBrdMapper {

	
	public void brdRegister(TblBrd vo);
	
	public List<TblBrd> brdList(BrdCriteria cri); 
	
	public int totalCount(BrdCriteria cri);
	
	public TblBrd selectOne(int idx);
}
