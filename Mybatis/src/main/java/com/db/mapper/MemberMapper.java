package com.db.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import member.DTOMember;



@Mapper
public interface MemberMapper {
	DTOMember login(Map<String, Object> map);
	public int insertMember(DTOMember member);
	public int updateMember(DTOMember member);
	public int deleteMember(String mem_id,String mem_pw);
	public List<DTOMember> selectMember(DTOMember member);

}
