package org.zerock.sample;

import org.springframework.stereotype.Component;

import lombok.ToString;

// DI주입 복습 3가지 
// : 1. 필드주입 / 2.세터주입/ 3.생성자주입
@Component
@ToString
public class SampleHotel {

	// Hotel에 Chef가 필요 ! -> 선언
	private Chef chef;
	// 이후 어떤 DI 주입을 이용할 것인지 판단

	public SampleHotel(Chef chef) {
		super();
		this.chef = chef;
	}
	
	
	}

