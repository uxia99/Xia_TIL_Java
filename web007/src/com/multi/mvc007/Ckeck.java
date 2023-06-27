package com.multi.mvc007;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


// @WebServlet("/check.do")
public class Ckeck extends HttpServlet {

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("get요청 들어옴");
		String today = request.getParameter("today");
		System.out.println("서버에서 받은 Today는 " + today);
		String result = "그냥 있자";
		if(today.equals("맑음")) {
			result = "산책가자";
		} else if (today.equals("흐림")) {
			result = "코딩하자";
		} else if (today.equals("비옴")) {
			result = "쇼핑하자";
		} 
		
		response.setContentType("text/html;charset=URF-8");
		PrintWriter out = response.getWriter(); // 200 
		out.print("<html><body>" + result + "<br></body></html>");
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("post요청 들어옴");
		request.setCharacterEncoding("UTF-8");
		String pw = request.getParameter("pw");
		System.out.println("서버에서 받은 pw는 " + pw);
		String result = "들어오세요";
		String img = "<img src = img/yes/jpg>";
		if (!pw.equals("내가 제일 잘나가")) {
			result = "들어오실 수 없습니다";
			img = "<img src = img/no.png";
		}
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter(); //200 
		out.print("<html><body>" + result + "<br>" + img + "</body></html>");
		out.close();
	}

}
