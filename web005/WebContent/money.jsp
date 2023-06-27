<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String money = request.getParameter("money"); // 금액
	String what = request.getParameter("what"); // 결제수단
	
	int money2 = Integer.parseInt(money);
	
	//실수 X, 정수(byte, short, int), char, String(1.8)
	switch(what) {
		case "1":
			money2 -= 1000; //money2 = money2 - 1000;
			break;
		case "2":
			money2 += 1000;
			break;
	}
%><%= money2 %>