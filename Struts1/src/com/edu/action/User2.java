package com.edu.action;

import com.opensymphony.xwork2.Action;

public class User2 implements Action {

	public String execute() throws Exception {
		System.out.println("Action2");
		return "success";
	}
	
}
