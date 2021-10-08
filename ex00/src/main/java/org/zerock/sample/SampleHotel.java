package org.zerock.sample;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

// DI주입 복습 3가지 
// : 1. 필드주입 / 2.세터주입/ 3.생성자주입
@Component
@ToString
@AllArgsConstructor
public class SampleHotel {

	// Hotel에 Chef가 필요 ! -> 선언
	private Chef chef;
	// 이후 어떤 DI 주입을 이용할 것인지 판단

	// @AllArgsConstructor 사용하면 아래 생성자 생성 안해줘도 됨
	//public SampleHotel(Chef chef) {
	//	super();
	//	this.chef = chef;
	// }
	
	// 혹은 @AllArgsConstructor 안쓰고
	// @RequiredArgsConstructor 
	// private final Chef chef; 로 선언해주면 된다
	
	
	}

