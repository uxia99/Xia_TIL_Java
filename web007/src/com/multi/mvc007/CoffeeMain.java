package com.multi.mvc007;

public class CoffeeMain {
	
	public static void main(String[] args) {
		Coffee1 c1 = new Coffee1(1000, "라떼");
		Coffee1 c2 = new Coffee1(2000, "아메리카노");
		System.out.println(c1);
		System.out.println(c2);
	}
}
