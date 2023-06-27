package com.multi.mvc001.test;

import java.util.Arrays;

public class MyCafe4 {
	
	public static void main(String[] args) {
		
		// 커피 가격 계산
		
		Calculator4 cal = new Calculator4();
		
		// 1. 밀크티 가격과 커피 가격 각각 계산	
		
		int coffeeSum = cal.sum(5, 2000);
		int milkteaSum = cal.sum(2, 3000);
				
		// 2. 커피와 밀크티 금액을 합해서 1인 금액 구하기 
		
		int totalSum = cal.total(coffeeSum, milkteaSum);
		int one = cal.div(totalSum, 7);
		
		System.out.println("한 사람당 " + one + "원 입니다.");
		System.out.println("전체 금액은 " + totalSum + "원 입니다.");
		System.out.println("커피 금액은 " + coffeeSum + "원 입니다.");
		System.out.println("밀크티 금액은 " + milkteaSum + "원 입니다.");
		
	}
}
