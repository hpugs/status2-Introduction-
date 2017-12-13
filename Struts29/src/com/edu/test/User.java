package com.edu.test;

import com.opensymphony.xwork2.ActionSupport;

public class User extends ActionSupport {

	private String name;
	private String password;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
	
}
