package com.carry.mp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

//	같은 코드 
//	public String index() {
//		return "index";
//	}
	
	@RequestMapping("/index")
	public void index() {
	} // 메인페이지 표현
	
	@RequestMapping("/")
	public String index1() {
		System.out.println("/진입");
		return "redirect:/index";
	} // "/" 형태로 들어오는 것들을 log 처리 -> /index로 보내줌
	
	
	
	
}
