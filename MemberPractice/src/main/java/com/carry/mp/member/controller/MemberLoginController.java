package com.carry.mp.member.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	// get방식일때는 view가 보여지도록, post 방식일때는 데이터를 받아서 처리하는 것을 구분
	
	@RequestMapping(method = RequestMethod.POST)
	public String memberLogin(
			@RequestParam("memberid") String memberid,
			@RequestParam("password") String password,
			@RequestParam(value = "reid", required = false) String reid, 
			// @RequestParam으로 받아야하는 parameter가 많아지면 loginRequest beans class만들어서 처리해주기
			HttpSession session,
			HttpServletResponse response,
			Model model // 응답처리를 위함
			) {
		
		// 사용자가 입력한 id, pw를 서비스에 전달해서 로그인 처리
		boolean memberloginChk = memberLoginService.memberlogin(memberid, password, reid, session, response);
		model.addAttribute("memberloginChk", memberloginChk);
		
		return "member/memberLogin"; // member/memberLogin.jsp 로 이동시키기
	}
}
