package com.edu.model;

public class User {
	private int age = 12;

	public User(){
		
	}
	
	public User(int age){
		this.age = age;
	}

	@Override
	public String toString() {
		return "User [age=" + age + "]";
	}
	
	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	
}
