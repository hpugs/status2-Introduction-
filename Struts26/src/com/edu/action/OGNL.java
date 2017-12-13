package com.edu.action;

import com.edu.model.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
public class OGNL extends ActionSupport implements ModelDriven<User>{

	private User user = new User();

	@Override
	public String execute() throws Exception {
		this.addFieldError("fielderror.text", "FieldError出错");
		this.addActionError("ActionErrorMessage");
		this.addActionMessage("ActionMessage");
		return SUCCESS;
	}

	public User getModel() {
		return user;
	}
	
	
}
