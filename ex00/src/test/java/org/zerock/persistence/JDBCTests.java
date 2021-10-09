package org.zerock.persistence;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTests {
//Junit(JDBC) 테스트를 위한 클래스 생성
	
	@Test
	public void testConnection() throws Exception {
		
		Class clz = Class.forName("oracle.jdbc.driver.OracleDriver");
		
		// log.info(clz); -> 오라클 연결 확인용 로그 
		
		Connection con = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:8080:XE", "", "");
		
		log.info(con);
		
		con.close(); // bad code -> finally로 해줘야하는데 일단 log 확인용으로 만듬
	}
	
}
