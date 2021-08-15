package com.carry.mp.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.carry.mp.member.dao.MemberDao;

@Service
public class MemberLoginService {

	@Autowired
	MemberDao dao;
	
	public void memberlogin() {
		dao.memberlogin();
	}
	
}
