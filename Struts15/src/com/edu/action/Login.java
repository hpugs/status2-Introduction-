package com.edu.action;

import com.edu.model.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class Login extends ActionSupport implements ModelDriven<User>{
	private User user = new User();
	
	@Override
	public String execute() throws Exception {
		if(user.getName() == 1){
			return SUCCESS;
		} else if(user.getName() == 2){
			return ERROR;
		} else {
			return "other";
		}
	}

	public User getModel() {
		return user;
	}
}
