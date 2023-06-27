package com.multi.mvc001.test;

import java.util.Arrays;

public class MyCafe3 {
	
	public static void main(String[] args) {
		
		// 커피 가격 계산
		
		Calculator3 cal = new Calculator3();
		
		// 1. 데이터를 하나하나 입력하여 계산기에 데이터를 전달하는 경우
		// -> 가방에 다 집어넣고, 가방 하나만 넘겨주면 됨
		
//		String result = cal.add("홍길동", 100, 200, "남");
//		System.out.println(result);
		
		// 2. 가방을 만들어서 값을 넣은 후 전달
		
		Bag bag = new Bag();
		bag.setName("유시아");
		bag.setAge(23);
		bag.setWeight(49);
		bag.setGender('여');
		
		String result2 = cal.add(bag);
		System.out.println(result2);
				
	}
}
