package com.multi.mvc006;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {
	// 멤버 변수, 멤버 메서드로 DAO 만들어주면 됨

	// DML(CRUD)
	// public void add(int x, int y)
	public void create(MemberVO bag) {
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
			String sql = "insert into member values (?, ?, ?, ?)";
			//  위의 String은 자바에서는 sql문으로 인식을 못함
			//  -> sql문에 해당하는 부품으로 만들어줘야 함
			//  PreparedStatement --- sql
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bag.getId());
			ps.setString(2, bag.getPw());
			ps.setString(3, bag.getName());
			ps.setString(4, bag.getTel());

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



	// row 1개 검색
	public MemberVO one(MemberVO bag) {
		ResultSet table = null;
		MemberVO bag2 = null;
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
			String sql = "select * from member where id = ?";
			//  위의 String은 자바에서는 sql문으로 인식을 못함
			//  -> sql문에 해당하는 부품으로 만들어줘야 함
			//  PreparedStatement --- sql
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bag.getId());

			System.out.println("<br>3. sql문 생성 성공");

			// 4. sql문 전송
			table = ps.executeQuery(); // 1, 0
			System.out.println("<br>4. sql문 전송 성공<br>");

			// 테이블에서 꺼내서 가방을 만들어 넣는다
			if(table.next()) {
				bag2 = new MemberVO();
				bag2.setId(table.getString("id"));
				bag2.setPw(table.getString("pw"));
				bag2.setName(table.getString("name"));
				bag2.setTel(table.getString("tel"));
			}

			ps.close();
			con.close();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return bag2;

	}

	// rows 여러개 검색 
	public ArrayList<MemberVO> list() {
		ResultSet table = null;
		// bag을 넣을 전체 컨테이너 역할을 하는 list를 하나 만들어줌 
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();
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
			String sql = "select * from member";
			//  위의 String은 자바에서는 sql문으로 인식을 못함
			//  -> sql문에 해당하는 부품으로 만들어줘야 함
			//  PreparedStatement --- sql
			PreparedStatement ps = con.prepareStatement(sql);

			System.out.println("<br>3. sql문 생성 성공");

			// 4. sql문 전송
			table = ps.executeQuery(); // 1, 0
			System.out.println("<br>4. sql문 전송 성공<br>");

			// 테이블에서 꺼내서 가방을 만들어 넣는다
			while(table.next()) {
				
				// 1. row가 있으면 (table.next()가 ture면 가방을 만들어서 테이블에서 꺼내 넣는다 
				MemberVO bag2 = new MemberVO();
				bag2.setId(table.getString("id"));
				bag2.setPw(table.getString("pw"));
				bag2.setName(table.getString("name"));
				bag2.setTel(table.getString("tel"));
				
				// 2. 가방은 컨테이너에 쌓는다 
				list.add(bag2);
			}

			ps.close();
			con.close();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// 실행시키기 전에 확인하고 넘긴다 
		System.out.println(list.size());
		System.out.println(list);
		return list;


	}

	// 
	public void update() {

		
	}

	public int delete(MemberVO bag) {
		int result = 0;
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
			String sql = "delete from member where id = ?";
			//  위의 String은 자바에서는 sql문으로 인식을 못함
			//  -> sql문에 해당하는 부품으로 만들어줘야 함
			//  PreparedStatement --- sql
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bag.getId());

			System.out.println("<br>3. sql문 생성 성공");

			// 4. sql문 전송
			result = ps.executeUpdate(); // 1, 0
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

		return result;

	}

}
