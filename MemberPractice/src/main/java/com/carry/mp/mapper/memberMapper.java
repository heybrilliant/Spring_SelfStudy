package com.carry.mp.mapper;
//package com.carry.mp.mapper;
//
//public class Snippet {
//	<?xml version="1.0" encoding="UTF-8"?>
//	<!DOCTYPE mapper 
//	PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN" 
//	"http://mybatis.org/dtd/mybatis-3-mapper.dtd">
//	
//	<mapper namespace="com.project.gymcarry.dao.MemberDao">
//	
//		<!-- 멤버로그인 -->
//		<!-- 로그인값은 멤버 캐리 상관없이 SessionDto로 받아오기  -->
//		<select id="memberLogin"
//			resultType="com.project.gymcarry.member.SessionDto">
//			select * from member where mememail=#{param1} and mempw=#{param2}</select>
//	
//		<!-- 멤버회원가입 -->
//		<insert id="insertMember"
//			parameterType="com.project.gymcarry.member.MemberDto"
//			useGeneratedKeys="true" keyProperty="memidx">
//			insert into
//			member(mememail, mempw, memname, memnick, memphone, membirth,
//			memgender)
//			values
//			(#{mememail},#{mempw},#{memname},#{memnick},#{memphone},#{membirth},#{memgender})
//		</insert>
//	
//		<!-- 멤버 이메일 중복 체크 -->
//		<!-- <select id="checkOverEmail"
//			parameterType="String"
//			resultType="int">
//			select count(*) from member where mememail = #{mememail}	
//		</select> -->
//			
//		<!-- 캐리로그인 -->
//		<select id="carryLogin"
//			resultType="com.project.gymcarry.member.SessionDto">
//			select cridx,
//			crnick from carry where cremail=#{param1} and crpw=#{param2}
//		</select>
//	
//		<!-- 캐리회원가입 -->
//		<insert id="insertCarry"
//			parameterType="com.project.gymcarry.carry.CarryJoinDto"
//			useGeneratedKeys="true" keyProperty="cridx">
//			insert into carry(cremail,
//			crpw, crname, crnick, crgender, crphone)
//			values
//			(#{cremail},#{crpw},#{crname},#{crnick},#{crgender},#{crphone})
//		</insert>
//		<!--, placename // ,#{placename} -->
//	
//		<!-- 아이디 찾기 -->
//		<!-- <select id="findid"
//			parameterType="String"
//			resultType="String">
//			select mememail 
//			from member where regname = #{memname} and regphonenum = #{memphone}
//		</select> -->
//	
//	
//	</mapper>
//}
//
