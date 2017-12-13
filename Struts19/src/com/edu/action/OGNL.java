package com.edu.action;

import com.edu.model.User;
import com.opensymphony.xwork2.ActionSupport;

public class OGNL extends ActionSupport{

	private User user;
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return SUCCESS;
	}
	
}
