package com.carry.mp.carry.service;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.carry.mp.carry.dao.CarryDao;

@Repository
public class CarryLoginService {

	@Autowired
	CarryDao dao;
	
	public boolean carrylogin(
			String id, 
			String pw, 
			String reid, 
			HttpSession session, 
			HttpServletResponse response) {
		
		boolean carryloginChk = false;
		
		dao.carrylogin();
		
		return carryloginChk;
	}
}
