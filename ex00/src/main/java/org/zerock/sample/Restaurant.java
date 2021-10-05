package org.zerock.sample;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import lombok.ToString;

// Setter 주입 (=@Setter(onMethod_ = {@Autowired} ))
// 생성자 주입 (=@AllArgsConstructor)
// 필드 주입  (=@Autowired)

@Component
@ToString
public class Restaurant {

	@Autowired
	private Chef chef;
	
}

