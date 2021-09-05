package com.carry.mp.member.service;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.carry.mp.carry.CarryDto;
importcom.carry.mp.dao.MemberDao;
import com.carry.mp.member.MemberDto;
@Service
public class JoinService {
	
	@Autowired
	private SqlSessionTemplate template;
	
	private MemberDao dao;
	
	public int memberJoin(MemberDto memberDto) {
		dao = template.getMapper(MemberDao.class);
		return dao.insertMember(memberDto);
	}
	
	public int carryJoin(CarryDto carryDto) {
		dao = template.getMapper(MemberDao.class);
		return dao.insertCarry(carryDto);
	}

	
}
