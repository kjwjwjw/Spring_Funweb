package com.itwillbs.funweb.service;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.funweb.mapper.MainMapper;
import com.itwillbs.funweb.vo.MemberVO;

@Service
public class MainService {
	
	@Autowired
	MainMapper mapper;
	
	public MemberVO loginMember(MemberVO member) {

			return mapper.checkMember(member);
	}

}
