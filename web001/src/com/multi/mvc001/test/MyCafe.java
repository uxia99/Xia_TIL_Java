package com.multi.mvc001.test;

public class MyCafe {
	
	public static void main(String[] args) {
		
		int coffee = 5;
		int price = 4500; // 한 잔 당 가격
		
		// 커피 가격 계산
		
		Calculator cal = new Calculator();
		int result1 = cal.mul(coffee, price); // 곱한 값 도
		
		// 20,000원 이상 구매 고객 -> 5,000원 할인
		
		System.out.println("기존 금액은 " + result1 + "원 입니다.");
		
		if(result1 >= 20000) {
			result1 = result1 - 5000;
		}
		
		System.out.println("할인 금액은 " + result1 + "원 입니다.");
	
	}
	
	
}
