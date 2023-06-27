package com.multi.mvc007;

public class Car {
	String color; // 4
	int cc; // 4
	String company;
	int price;

	// 생성자
	public Car(String color, int cc, String company, int price) {
		super();
		this.color = color;
		this.cc = cc;
		this.company = company;
		this.price = price;
	}

	// toString()
	@Override
	public String toString() {
		return "Car [color=" + color + ", cc=" + cc + ", company=" + company + ", price=" + price + "]";
	}

}
