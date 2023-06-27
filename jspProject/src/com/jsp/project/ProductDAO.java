package com.jsp.project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProductDAO {
	// 물건 리스트 전체 보기
	public ArrayList<ProductDTO> list() throws Exception {
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
		String sql = "select * from product";
		PreparedStatement ps = con.prepareStatement(sql);
		System.out.println("3.ok----------");

		// 4. sql문 mysql서버로 전송
		// 5. 검색결과를 ArrayList에 넣어서 return
		ArrayList<ProductDTO> list = new ArrayList<>();
		ResultSet rs = ps.executeQuery();
		while (rs.next()) { // true이면
			// rs내의 한 행씩 아래로 내려가면서 그 행에 결과가 들어있는지 체크
			// 내부적으로 한 행씩 가르키게 됨: 커서!
			// 가방을 하나 만들어서
			ProductDTO dto = new ProductDTO();

			// 각 컬럼의 인덱스를 가지고 꺼내와서 가방에 넣는다.
			dto.setId(rs.getString(1));
			dto.setTitle(rs.getString(2));
			dto.setContent(rs.getString(3));
			dto.setPrice(rs.getString(4));
			dto.setImg(rs.getString(6));

			// 가방을 list에 넣는다.
			list.add(dto);
		}
		return list;

	}

	// 리스트 중에서 선택한 물건 하나 보기
	public ProductDTO one(ProductDTO dto) throws Exception {
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
		String sql = "select * from product where id = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		System.out.println("3.ok----------");
		ps.setString(1, dto.getId());

		// 4. sql문 mysql서버로 전송
		ResultSet rs = ps.executeQuery();
		ProductDTO dto2 = new ProductDTO();
		if(rs.next()) { // true이면
			// rs내의 한 행씩 아래로 내려가면서 그 행에 결과가 들어있는지 체크
			// 내부적으로 한 행씩 가르키게 됨: 커서!
			// 가방을 하나 만들어서
			// 각 컬럼의 인덱스를 가지고 꺼내와서 가방에 넣는다.
			dto2.setId(rs.getString(1));
			dto2.setTitle(rs.getString(2));
			dto2.setContent(rs.getString(3));
			dto2.setPrice(rs.getString(4));
			dto2.setImg(rs.getString(6));
		}
		return dto2;

	}
}
