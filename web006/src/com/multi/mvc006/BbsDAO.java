package com.multi.mvc006;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class BbsDAO {

	// 멤버 변수, 멤버 메서드로 DAO 만들어주면 됨

	// DML(CRUD)
	// public void add(int x, int y)
	public void create(BbsVO bag) {
		try {
			//db 연결해서 sql만든 후 전송
			// 1. 드라이버 설정
			Class.forName("com.mysql.cj.jdbc.Driver");
			//  out객체 : 내장된 객체, PrintWriter
			System.out.println("1. 드라이버 설정 성공");
			String url = "jdbc:mysql://localhost:3306/shop?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			// 2. DB 연결 - url(ip + port + db명), id, pw

			// java에서 한번에 import 단축키 : Cmd + Shift + O
			Connection con = DriverManager.getConnection(url, user, password); //Connection
			System.out.println("<br>2. DB 연결 성공");

			// 3. sql문 생성
			String sql = "insert into bbs values (?, ?, ?, ?)";
			//  위의 String은 자바에서는 sql문으로 인식을 못함
			//  -> sql문에 해당하는 부품으로 만들어줘야 함
			//  PreparedStatement --- sql
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bag.getNo());
			ps.setString(2, bag.getTitle());
			ps.setString(3, bag.getContent());
			ps.setString(4, bag.getWriter());

			System.out.println("<br>3. sql문 생성 성공");

			// 4. sql문 전송
			ps.executeUpdate();
			System.out.println("<br>4. sql문 전송 성공<br>");

			ps.close();
			con.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public String toString() {
		return "MemberDAO [getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
		+ "]";
	}

	// row 1개 검색
	public void one() {

	}

	// rows 여러개 검색 
	public void list() {

	}

	// 
	public void update() {

	}

	public void delete() {

	}

}