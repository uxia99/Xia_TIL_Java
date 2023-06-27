package com.multi.mvc007;

public class Car2 {
	// 전역변수, global 변수 
	static Car2 car; // null
	static int count; // 0 
	String color; // 4, null 
	int cc; // 4, 0 
	String company; // null 
	int price; // 0 

	// 아직 객체가 만들어진 것이 없다면 1개를 만들어라
	// 이미 객체가 만들어진 것이 있다면 램에 어디있는 지 주소를 리턴해라 
	public static Car2 getInstance() { 
		if(car == null) {
			car = new Car2("은색", 1000, "Cadillac", 1000);
			System.out.println("객체 생성됨");
			count += 20;
		}
		
		return car;
		
	}
	
	private Car2(String color, int cc, String company, int price) {
		this.color = color;
		this.cc = cc;
		this.company = company;
		this.price = price;
		
	}

}
