package com.multi.mvc007;

public class CarUse {
	
	public static void main(String[] args) {
		int count = 0;
		for (int i = 0; i < 1000; i++) {
			// 프로토타입(원형, 틀) 기법, 벽돌 
			Car car = new Car("Escalade", 6000, "Cadillac", 1000);
			System.out.println(car); // 패키지@해쉬넘 -> toString() 
			count += 20;
		}
		
		System.out.println("전체 램크기 : " + count);
		
	}
	
}
