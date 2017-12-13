package com.edu.model;

public class Cat {

	private Dog friend;

	public Dog getFriend() {
		return friend;
	}

	public void setFriend(Dog friend) {
		this.friend = friend;
	}
	
	public String Eat(){
		return "猫爱吃鱼";
	}
}
