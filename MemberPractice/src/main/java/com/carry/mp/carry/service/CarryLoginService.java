package com.carry.mp.carry.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.carry.mp.carry.dao.CarryDao;

@Repository
public class CarryLoginService {

	@Autowired
	CarryDao dao;
	
	public void carrylogin() {
		dao.carrylogin();
	}
}
