package kr.smhrd.mapper;

import java.util.List;

import kr.smhrd.entity.AbanCriteria;
import kr.smhrd.entity.TblDtl;

public interface TblDtlMapper {

	public List<TblDtl> getList(AbanCriteria cri);
	
	public int totalCount(AbanCriteria cri);
	
	public TblDtl get(int dtl_seq);
}
