package com.multi.mvc001.test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;

public class Calculator5 {

	public ArrayList<Integer> getEven(int[] num) {
		System.out.println("받은 전체 배열 개수 : " + Arrays.toString(num));

		// 받은 배열은 >> [1, 3, 4, 5, 7, 8, 2, 2, 4, 5, 6, 9]
		// ???짝수 값은 어디다 모아? 
		// 1. 가방은 지정한 것만 넣을 수 있음 -> 모르니까 못 씀
		// 2. 배열을 사용하기엔 처음 만들 때 크기를 정해야 쓸 수 있음 
		// 3. list - ArrayList<Integer> 가능, ArrayList<int> 불가능 (가변크기)
		// 가변적인 데이터 결과를 넣기 좋은 데이터타입은 ArrayList<Integer> 

		ArrayList<Integer> list = new ArrayList<Integer>();
		System.out.println(num.length);
		for(Integer x : num) {

			if(x % 2 == 0) {
				list.add(x);
			}

		}

		System.out.println("짝수의 개수 : " + list.size());
		return list;

		
	}
	

	public ArrayList<Integer> getOdd(int[] num) {
		System.out.println("받은 배열은 >> " + Arrays.toString(num));

		// 받은 배열은 >> [1, 3, 4, 5, 7, 8, 2, 2, 4, 5, 6, 9]
		// ???짝수 값은 어디다 모아? 
		// 1. 가방은 지정한 것만 넣을 수 있음 -> 모르니까 못 씀
		// 2. 배열을 사용하기엔 처음 만들 때 크기를 정해야 쓸 수 있음 
		// 3. list - ArrayList<Integer> 가능, ArrayList<int> 불가능 (가변크기)
		// 가변적인 데이터 결과를 넣기 좋은 데이터타입은 ArrayList<Integer> 

		ArrayList<Integer> list = new ArrayList<Integer>();
		System.out.println(num.length);
		for(Integer x : num) {

			if(x % 2 != 0) {
				list.add(x);
			}

		}

		System.out.println("홀수의 개수 : " + list.size());
		return list;

		
	}
	
	
	public HashSet<Integer> getUnique(int[] num) {
		System.out.println("받은 배열은 >> " + Arrays.toString(num));

		// 받은 배열은 >> [1, 3, 4, 5, 7, 8, 2, 2, 4, 5, 6, 9]
		// ???짝수 값은 어디다 모아? 
		// 1. 가방은 지정한 것만 넣을 수 있음 -> 모르니까 못 씀
		// 2. 배열을 사용하기엔 처음 만들 때 크기를 정해야 쓸 수 있음 
		// 3. list - ArrayList<Integer> 가능, ArrayList<int> 불가능 (가변크기)
		// 가변적인 데이터 결과를 넣기 좋은 데이터타입은 ArrayList<Integer> 

		HashSet<Integer> list = new HashSet<Integer>();
		System.out.println(num.length);
		for(Integer x : num) {
				list.add(x);
			}

		System.out.println("중복 없는 전체 개수 : " + list.size());
		return list;

	}
		
}
