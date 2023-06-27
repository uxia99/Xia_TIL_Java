package com.jsp.project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BbsDAO {
	
	public int insert(BbsDTO dto)  {
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
		String sql = "insert into bbs values (null,?,?,?)";
//		String sql = "insert into bbs(title, content, writer) values (?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, dto.getTitle());
		ps.setString(2, dto.getContent());
		ps.setString(3, dto.getWriter() );
		
		System.out.println("3.ok----------");

		// 4.DB로 SQL문 전송
		result = ps.executeUpdate();
		System.out.println("4.ok----------");
		}catch(Exception e) {
			System.out.println("에러가 발생함.");
		}
		return result;

	}
	
	// 리스트 전체 보기
	public ArrayList<BbsDTO> list() throws Exception {
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
		String sql = "select * from bbs order by id desc";
		PreparedStatement ps = con.prepareStatement(sql);
		System.out.println("3.ok----------");

		// 4. sql문 mysql서버로 전송
		// 5. 검색결과를 ArrayList에 넣어서 return
		ArrayList<BbsDTO> list = new ArrayList<>();
		ResultSet rs = ps.executeQuery();
		while (rs.next()) { // true이면
			// rs내의 한 행씩 아래로 내려가면서 그 행에 결과가 들어있는지 체크
			// 내부적으로 한 행씩 가르키게 됨: 커서!
			// 가방을 하나 만들어서
			BbsDTO dto = new BbsDTO();
			dto.setId(rs.getString(1));
			dto.setTitle(rs.getString(2));
			dto.setContent(rs.getString(3));
			dto.setWriter(rs.getString(4));

			// 가방을 list에 넣는다.
			list.add(dto);
		}
		return list;

	}

	// 리스트 중에서 선택한 물건 하나 보기
	public BbsDTO one(BbsDTO dto) throws Exception {
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
		String sql = "select * from bbs where id = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		System.out.println("3.ok----------");
		ps.setString(1, dto.getId());

		// 4. sql문 mysql서버로 전송
		ResultSet rs = ps.executeQuery();
		BbsDTO dto2 = new BbsDTO();
		if(rs.next()) { // true이면
			// rs내의 한 행씩 아래로 내려가면서 그 행에 결과가 들어있는지 체크
			// 내부적으로 한 행씩 가르키게 됨: 커서!
			// 가방을 하나 만들어서
			// 각 컬럼의 인덱스를 가지고 꺼내와서 가방에 넣는다.
			dto2.setId(rs.getString(1));
			dto2.setTitle(rs.getString(2));
			dto2.setContent(rs.getString(3));
			dto2.setWriter(rs.getString(4));
		}
		return dto2;
	}
}
