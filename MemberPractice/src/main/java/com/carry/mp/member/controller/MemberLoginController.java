package com.carry.mp.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.carry.mp.member.service.MemberLoginService;

@Controller
@RequestMapping("/member/login")
public class MemberLoginController {

	@Autowired
	private MemberLoginService memberLoginService;
	
	@RequestMapping(method = RequestMethod.GET) // post 안됨!
	public String memberLoginForm() {
		return "member/memberLoginForm";
	}
	
}
