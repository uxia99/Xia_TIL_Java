package com.multi.mvc001.test;

import java.util.Arrays;

public class MyCafe2 {
	
	public static void main(String[] args) {
		
		// 커피 가격 계산
		
		Calculator2 cal = new Calculator2();
		int x = 5;
		int y = 3;
		int result1 = cal.add(x, y);
		
		// int, long, double
		
		System.out.println(result1);
		
		// x/y; //1, 1.346324
		
		double result2 = cal.add(11.1, y);
		System.out.println(result2);
		
		String result3 = cal.add("안녕", "홍길동");
		System.out.println(result3);
		
		String result4 = cal.add(100, "세 입니다.");
		System.out.println(result4);
		
		int[] result5 = cal.add();
		System.out.println(Arrays.toString(result5));
		
	}
	
	
}
