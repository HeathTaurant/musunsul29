package com.db;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import com.db.mapper.MemberMapper;

import member.DTOMember;


@Service
public class MemberService {

	private MemberMapper memberMapper;
	
	public MemberService(MemberMapper memberMapper) {
		this.memberMapper = memberMapper;
	}
	
	public int insertMember(DTOMember member) {
		return memberMapper.insertMember(member);
	}
	
	public List<DTOMember> selectMember(DTOMember member){
		return memberMapper.selectMember(member);
		
	}
	
	
	public DTOMember login(String mem_id, String mem_pw) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mem_id", mem_id);
		map.put("mem_pw", mem_pw);
		return memberMapper.login(map);
	}
	
	public int updateMember(DTOMember member) {
		return memberMapper.updateMember(member);
	}
	
	public int deleteMember(String mem_id,String mem_pw) {
		return memberMapper.deleteMember(mem_id,mem_pw);
	}
	
	
}
