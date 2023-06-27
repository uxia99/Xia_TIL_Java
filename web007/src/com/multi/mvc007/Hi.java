package com.multi.mvc007;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/hello")
public class Hi extends HttpServlet {
	//  static final long serialVersionUID = 1L;
       

    // public Hi() {
    //   super();
    // }


	public void init(ServletConfig config) throws ServletException {
		System.out.println("서블릿 생성됨");
	}


	public void destroy() {
		System.out.println("서블릿 소멸됨");
	}


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("클라이언트 요청 내가 다 받음");
		System.out.println("jsp에 쓴 코드가 서블릿으로 컨버팅될 때 다 여기 들어감");
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("클라이언트 요청 get");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// doGet(request, response);
		System.out.println("클라이언트 요청 post");
	}

}
