package com.multi.mvc007;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// ("/Monday2.do")
public class Monday extends HttpServlet {
	String temp = null; // null 
      
	@Override 
	public void init(ServletConfig config) throws ServletException {
		System.out.println("객체 생성됨");
		temp = config.getInitParameter("temp");
	}
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("get요청 받음");
		PrintWriter out = response.getWriter();
		out.print("get요청 받음 + parameter values >> " + temp);
		out.close();
	}

}
