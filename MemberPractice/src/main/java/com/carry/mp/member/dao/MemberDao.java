package com.project.gymcarry.dao;

import com.project.gymcarry.carry.CarryDto;
import com.project.gymcarry.carry.CarryJoinDto;
import com.project.gymcarry.member.MemberDto;
import com.project.gymcarry.member.SessionDto;
//원래 작업하던거!!!!!
//원래 작업하던거!!!!!
//원래 작업하던거!!!!!
//원래 작업하던거!!!!!
//원래 작업하던거!!!!!
//원래 작업하던거!!!!!
//원래 작업하던거!!!!!



public interface MemberDao2 {
	
	// 멤버 로그인
	SessionDto memberLogin(String id, String pw);
	// 멤버 회원가입
	int insertMember(MemberDto memberDto);
	// 멤버 이메일 중복 체크
	int checkOverEmail(String mememail);
	// 케리회원가입
	int insertCarry(CarryJoinDto carryDto);
	// 케리로그인
	SessionDto carryLogin(String id, String pw);
	// 아이디찾기 
	String findid(MemberDto memberDto, CarryDto carryDto);
}
