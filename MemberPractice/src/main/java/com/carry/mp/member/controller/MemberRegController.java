package com.carry.mp.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.carry.mp.member.domain.MemberRegRequest;

@Controller
@RequestMapping("/member/memberReg")
public class MemberRegController {

	@RequestMapping(method = RequestMethod.GET)
	public String regForm() {
		return "member/memberReg";
	} 
	
	@RequestMapping(method = RequestMethod.POST)
	public String reg(
			MemberRegRequest regRequest
			) {
		
		
		return "member/reg"; //영상에서 reg, regform이랑 구분해야함
	}
	
}
