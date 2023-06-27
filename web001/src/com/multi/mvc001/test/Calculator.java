package com.multi.mvc001.test;

public class Calculator { // class의 2대 구성 요소
	// 필드 + 동작
	// 변수 + 메서드
	// 멤버변수, 멤버 메서드
	
	String color;
	
	public void add() {
		
		System.out.println("더하는 기능을 처리하다.");
	}
	
	public void minus() {
		
		System.out.println("빼는 기능을 처리하다.");
	}
	
	public int mul(int co, int pr) {
		System.out.println("곱하는 기능을 처리하다.");
		return co * pr;
		
		// Java에서 int, int의 계산은 무조건 int
		// 연산자와 피연산자에서 피연산자 값이 하나라도 실수면 결과는 무조건 실수
		
	}
	
	public void div() {
		
		System.out.println("나누는 기능을 처리하다.");
	}
	
}
