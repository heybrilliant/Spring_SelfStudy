package com.carry.mp.carry.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.carry.mp.carry.service.CarryLoginService;

@Controller
@RequestMapping("/carry/login")
public class CarryLoginController {

	@Autowired
	private CarryLoginService carryLoginService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String carryLoginForm() {
		return "carry/carryLoginForm";
	}
	
}
