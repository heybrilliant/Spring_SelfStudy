package com.carry.mp.carry.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.carry.mp.jdbc.jdbcUtil;
import com.carry.mp.member.domain.Member;


public class MemberDao {

	private MemberDao() {
	}

	private static MemberDao dao = new MemberDao();

	public static MemberDao getInstance() {
		return dao;
	}

//	public int insertMember(Connection conn, Member member) throws SQLException {
//
//		int resultCnt = 0;
//
//		PreparedStatement pstmt = null;
//
//		String sql1 = "insert into member (memberid,password,membername) values (?,?,?)";
//		String sql2 = "insert into member (memberid,password,membername,memberphoto) values (?,?,?,?)";
//
//		try {
//			
//			if(member.getMemberphoto() == null) {
//				pstmt = conn.prepareStatement(sql1);
//				pstmt.setString(1, member.getMemberid());
//				pstmt.setString(2, member.getPassword());
//				pstmt.setString(3, member.getMembername());
//				
//			} else {
//				pstmt = conn.prepareStatement(sql2);
//				pstmt.setString(1, member.getMemberid());
//				pstmt.setString(2, member.getPassword());
//				pstmt.setString(3, member.getMembername());
//				pstmt.setString(4, member.getMemberphoto());
//			}
//
//			resultCnt = pstmt.executeUpdate();
//
//		} finally {
//			jdbcUtil.close(pstmt);
//		}
//		
//		return resultCnt;
//	}

//	public List<Member> selectList(Connection conn) {
//
//		List<Member> list = null;
//
//		Statement stmt = null;
//		ResultSet rs = null;
//
//		try {
//			stmt = conn.createStatement();
//
//			String sql = "select * from member";
//
//			rs = stmt.executeQuery(sql);
//
//			list = new ArrayList<Member>();
//
//			while (rs.next()) {
//				list.add(new Member(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
//						rs.getTimestamp(6)));
//			}
//
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} finally {
//			util.jdbcUtil.close(rs);
//			util.jdbcUtil.close(stmt);
//		}
//
//		return list;
//
//	}

	public Member selectByIdPw(Connection conn, String id, String pw) {
		
		Member member = null; 
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from member where memberid=? and password=?";
		
		
		try {
			pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			member = new Member();
			member.setIdx(rs.getInt("idx"));
			member.setMememail(rs.getString("mememail"));
			member.setMempw(rs.getString("mempw"));
			member.setMemname(rs.getString("memname"));
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			jdbcUtil.close(rs);
			jdbcUtil.close(pstmt);
		}
		return member;
	
	}

	
	// ID 중복여부 확인을 위한 id 값으로 검색 -> 갯수 반환
//	public int selectById(Connection conn, String memberId) throws SQLException {
//
//		int cnt = 0;
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		
//		String sql = "select count(*) from member where memberid=?";
//		
//		
//		try {
//		pstmt = conn.prepareStatement(sql);
//		pstmt.setString(1, memberId);
//		
//		rs = pstmt.executeQuery();
//		
//		if(rs.next()) {
//			cnt = rs.getInt(1);
//		}
//		
//		} finally {
//			util.jdbcUtil.close(rs);
//			util.jdbcUtil.close(pstmt);
//		}
//		return cnt;
//	}
}
