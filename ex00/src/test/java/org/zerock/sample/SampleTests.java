package org.zerock.sample;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class SampleTests {

	@Autowired
	private Restaurant restaurant;
	
	@Autowired
	// 필드 주입
	private SampleHotel hotel;
	
	@Test
	public void testHotel() {
		// Hotel 테스트용 로그 기록
		log.info(hotel);
	}
	
	@Test
	public void test1() {
		
		// 테스트용 로그기록
		System.out.println("test1!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		log.info("test1!!!!!!!!!!!!!");
		// autowired 확인
		log.info(restaurant);
		// log에서 Restaurant(chef=Chef()) 출력 확인 
		// 만약 autowired를 삭제하면 Restaurant(chef=null)이 출력되는걸 확인할 수 있음 
		
	}
	
}
