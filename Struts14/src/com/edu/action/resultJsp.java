package com.edu.action;

import com.edu.model.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class resultJsp extends ActionSupport implements ModelDriven<User>{
	private User user = new User();
	private String resultJsp;

	public String getResultJsp() {
		return resultJsp;
	}

	public void setResultJsp(String resultJsp) {
		this.resultJsp = resultJsp;
	}

	@Override
	public String execute() throws Exception {
		if(user.getName() == 1){
			resultJsp = "success.jsp";
		} else {
			resultJsp = "error.jsp";
		}
		return SUCCESS;
	}

	public User getModel() {
		return user;
	}
}
