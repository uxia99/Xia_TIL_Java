package com.multi.mvc007;

public class CarUse2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int count = 0; // 지역변수, local
		for (int i = 0; i < 1000; i++) {
			Car2 car2 = Car2.getInstance();
			System.out.println(car2);
			count = count + 20;
			// count += 20;
		}
		System.out.println("전체 램크기 : " + count);
	}

}
