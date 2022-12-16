package kr.smhrd.mapper;

import java.util.List;

import kr.smhrd.entity.AbanCriteria;
import kr.smhrd.entity.TblAban;

public interface TblAbanMapper {

	public List<TblAban> randomList();
	
	public List<TblAban> getList(AbanCriteria cri);
	
	public int totalCount(AbanCriteria cri);
}
