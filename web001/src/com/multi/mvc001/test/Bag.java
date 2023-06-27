package com.multi.mvc001.test;

public class Bag {
	
	private String name;
	private int age;
	private double weight;
	private char gender;
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public double getWeight() {
		return weight;
	}
	public void setWeight(double weight) {
		this.weight = weight;
	}
	public char getGender() {
		return gender;
	}
	public void setGender(char gender) {
		this.gender = gender;
	}
	
	
	@Override
	public String toString() {
		return "Bag [name=" + name + ", age=" + age + ", weight=" + weight + ", gender=" + gender + "]";
	}
	
	
	
}
