package com.jsp.project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//db처리 전담 클래스
public class MemberDAO {
	
	public boolean login(MemberDTO dto) throws Exception {
		// 1.드라이버(커넥터) 설정
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("1.ok----------");

		// 2.DB연결(url, id, pw)
		String url = "jdbc:mysql://localhost:3306/shop?serverTimezone=UTC";
		String user = "root";
		String password = "1234";
		Connection con = DriverManager.getConnection(url, user, password);
		System.out.println("2.ok----------");

		// 3.SQL문 결정/생성
		String sql = "select * from member where id = ? and pw = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, dto.getId());
		ps.setString(2, dto.getPw());
		System.out.println("3.ok----------");

		// 4.DB로 SQL문 전송
		ResultSet rs = ps.executeQuery();
		System.out.println("4.ok----------");
		boolean result = false;
		if(rs.next()) {
			result = true;
		}
		return result;
	}

	public int insert(MemberDTO dto)  {
		int result = 0;
		try {
		// 1.드라이버(커넥터) 설정
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("1.ok----------");

		// 2.DB연결(url, id, pw)
		String url = "jdbc:mysql://localhost:3306/shop?serverTimezone=UTC";
		String user = "root";
		String password = "1234";
		Connection con = DriverManager.getConnection(url, user, password);
		System.out.println("2.ok----------");

		// 3.SQL문 결정/생성
		String sql = "insert into member values (?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, dto.getId());
		ps.setString(2, dto.getPw());
		ps.setString(3, dto.getName());
		ps.setString(4, dto.getTel());
		System.out.println("3.ok----------");

		// 4.DB로 SQL문 전송
		result = ps.executeUpdate();
		System.out.println("4.ok----------");
		}catch(Exception e) {
			System.out.println("에러가 발생함.");
		}
		return result;

	}
}
