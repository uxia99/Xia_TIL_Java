package com.multi.mvc001.test;

import java.util.ArrayList;
import java.util.HashSet;

public class MyCafe5 {
	
	public static void main(String[] args) {
		
		int[] num = {1, 3, 4, 5, 7, 8, 2, 2, 4, 5, 6, 9};
		Calculator5 cal = new Calculator5();
		
		ArrayList<Integer> list = cal.getEven(num);
		System.out.println(list);
		
		ArrayList<Integer> list2 = cal.getOdd(num);
		System.out.println(list2);
		
		/* int --> Integer (wrapper class, 포장클래스) 
		   int <---> Integer 가능 (자동포장, 오토박싱) 
		   int <-- Integer (오토언박싱) */
		
		 HashSet<Integer> list3 = cal.getUnique(num);
		 System.out.println(list3);
		
	}
		
}