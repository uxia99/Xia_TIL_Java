package com.multi.mvc001.test;

public class Calculator3 {
	
	public String add(Bag bag) {
		
//	public String add(String name, int age, double height, char gender) {
		
		return "이름은 " + bag.getName() + 
				"이고, 나이는 " + bag.getAge() + 
				"이고, 몸무게는 " + bag.getWeight() + 
				"이며, 성별은 " + bag.getGender() + "입니다.";
		
		
	}
	
}
	