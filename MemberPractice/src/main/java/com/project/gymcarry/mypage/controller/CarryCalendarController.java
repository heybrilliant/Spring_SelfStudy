package com.project.gymcarry.mypage.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.sound.midi.Soundbank;

import org.apache.ibatis.annotations.Param;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.gymcarry.carry.CarryMypageDto;
import com.project.gymcarry.member.SessionDto;
import com.project.gymcarry.mypage.service.MypageService;


@Controller
public class CarryCalendarController {

	@Autowired
	private MypageService mypService;


	@PostMapping("mypage/schedule")
	// /gym/mypage/schedule
//	@RequestMapping(value = "/mypage/schedule", method = RequestMethod.POST, headers = {"Accept=application/json"})
	@ResponseBody
	public String addCrschedule(HttpSession session, @RequestBody List<CarryMypageDto> request) {
		System.out.println("carrymp : "+ request);
		
		
		SessionDto sdt = (SessionDto) session.getAttribute("loginSession");

		session.setAttribute("cridx", sdt.getCridx());
		System.out.println("cridx : " + sdt.getCridx());
	
		
//		for(int i=0; i < request.size(); i++) {
//			System.out.println(request.get(i).getTitle());
//		}
		
		for (CarryMypageDto carryMypageDto : request) {
			
			carryMypageDto.setCridx(sdt.getCridx());
			
			System.out.println(carryMypageDto.getTitle());
			System.out.println(carryMypageDto.getAllday());
			System.out.println(carryMypageDto.getStart());
			System.out.println(carryMypageDto.getEnd());
			System.out.println(carryMypageDto.getCridx());
			
		}

		System.out.println("컨트롤러 리퀘스트 : " + request);
		
		mypService.carrycalendar(request);
		
		return "/mypage/carrymypage";
		
		
		
	}


}
