package kr.smhrd.mapper;

import org.apache.ibatis.annotations.Select;

import kr.smhrd.entity.TblUser;

public interface TblUserMapper {

	@Select("select * from tbl_user where user_id = #{user_id, jdbcType=VARCHAR} and user_pw = #{user_pw, jdbcType=VARCHAR}")
	public TblUser login(TblUser vo);
}
