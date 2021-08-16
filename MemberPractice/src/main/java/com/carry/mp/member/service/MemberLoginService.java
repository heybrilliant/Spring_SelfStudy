package com.carry.mp.member.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.carry.mp.jdbc.ConnectionProvider;
import com.carry.mp.member.dao.MemberDao;
import com.carry.mp.member.domain.Member;

@Service
public class MemberLoginService {

	@Autowired
	MemberDao dao;
	
	public boolean memberlogin(
			String id, 
			String pw, 
			String reid, 
			HttpSession session, 
			HttpServletResponse response) {
		
		boolean memberloginChk = false;
		
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			
			// 전달받은 id와 pw로 DB에서 검색한다 (Select) 
			// -> 있다면 로그인 처리(true return), 
			// 없다면 이전으로 돌아갈 수 있는 false return 처리해서 돌아감
			Member member = dao.selectByIdPw(conn, id, pw);
			
			if(member != null) {
				// 로그인 처리
				session.setAttribute("loginInfo", member.toLoginInfo());
				
				memberloginChk = true;
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// cookie값 저장 
		// 아이디 저장을 위한 Cookie 설정
		
		if(reid != null && reid.length() > 0) {
			Cookie cookie = new Cookie("reid", reid);
			cookie.setPath("/");
			cookie.setMaxAge(60*60*24*365);  // 1년의 생명주기 설정
		
			response.addCookie(cookie);
		} else { 
			Cookie cookie = new Cookie("reid", reid);
			cookie.setPath("/");
			cookie.setMaxAge(0);  // reid = 0이라면 생명주기 설정 X
		
			response.addCookie(cookie);
		}
		
		return memberloginChk;
	}
	
}
