package com.car.project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.multi.mvc006.CarVO;

public class CarDAO {

	public void create(CarVO bag) {
		try {

			// 1. 드라이버 설정
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. 드라이버 설정 성공");
			
			String url = "jdbc:mysql://localhost:3306/shop?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			// 2. DB연결 - url(ip + port + db명), id, pw
			
			Connection con = DriverManager.getConnection(url, user, password);	// Connection
			System.out.println("2. db연결 성공");

			// 3. sql문 생성 
			String sql = "insert into car values (?, ?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bag.getVin());
			ps.setString(2, bag.getModel());
			ps.setString(3, bag.getBrand());
			ps.setString(4, bag.getYear());

			System.out.println("<br>3. SQL문 생성 성공");

			// 4. sql문 전송
			ps.executeUpdate();
			System.out.println("<br>4. SQL문 전송 성공<br>");

			ps.close();
			con.close();

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}	

	}
	
	public CarVO read(CarVO bag) {
		ResultSet table = null;
		CarVO bag2 = null;
		try {
			// 1. 드라이버 설정 
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. 드라이버 설정 성공");
			String url = "jdbc:mysql://localhost:3306/shop?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("<br>2. DB 연결 성공");
			
			// 3. SQL문 생성
			String sql = "select * from car where vin = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bag.getVin());
			
			System.out.println("<br>3. SQL문 생성 성공");
			
			// 4. SQL문 전송
			table = ps.executeQuery();
			System.out.println("<br>4. SQL문 전송 성공<br>");
			
			// 테이블에서 데이터를 꺼내 가방을 만들어 넣음 
			if(table.next()) {
				bag2 = new CarVO();
				bag2.setVin(table.getString("vin"));
				bag2.setModel(table.getString("model"));
				bag2.setBrand(table.getString("brand"));
				bag2.setYear(table.getString("year"));
			} else {
				System.out.println("해당 차량 정보를 찾을 수 없음");
			}
			
			ps.close();
			con.close();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		System.out.println(bag2);
		return bag2;
		
	}
	
	public void update(CarVO bag) {
		try {
			// 드라이버 설정 
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. 드라이버 설정 성공");
			
			String url = "jdbc:mysql://localhost:3306/shop?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			
			// DB 연결 
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. DB연결 성공");
				
			// SQL문 생성 
			String sql = "update car set model = ?, brand = ?, year = ? where vin = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			// System.out.println(bag.getModel());
			ps.setString(1, bag.getModel());
			ps.setString(2, bag.getBrand());
			ps.setString(3, bag.getYear());
			ps.setString(4, bag.getVin());
			
			System.out.println("<br>3. SQL문 생성 성공");
			
			// SQL문 전송 
			ps.executeUpdate();
			System.out.println("<br>4. SQL문 전송 성공<br>");
			
			ps.close();
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
				
	}
	
	public int delete(CarVO bag) {
		int result = 0;
		try {
			
			// 1. 드라이버 설정 
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. 드라이버 설정 성공");
			String url = "jdbc:mysql://localhost:3306/shop?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			
			// 2. DB 연결 
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("<br>2. DB연결 성공");
			
			// 3. SQL문 생성
			String sql = "delete from car where vin = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bag.getVin());
			
			System.out.println("<br>3. SQL문 생성 성공");
			
			// 4. SQL문 전송 
			result = ps.executeUpdate();
			System.out.println("<br>4. SQL문 전송 성공");
			
			ps.close();
			con.close();
		
		} catch (ClassNotFoundException e) {
			// TODO: handle exception
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return result;
		
	}
	
}
	