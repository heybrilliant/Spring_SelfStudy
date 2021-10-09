package org.zerock.persistence;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTests {
//Junit(JDBC) 테스트를 위한 클래스 생성
	
	@Test
	public void testConnection() throws Exception {
		
		Class clz = Class.forName("oracle.jdbc.driver.OracleDriver");
		
		log.info(clz);
	}
	
}
