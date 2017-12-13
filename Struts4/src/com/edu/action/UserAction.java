package com.edu.action;

import com.edu.model.User;
import com.opensymphony.xwork2.ActionSupport;

/***
 * Dormain Model
 * @author jho
 * http://localhost:8080/Struts4/index!login?user.name="123"&user.password="456"
 */
@SuppressWarnings("serial")
public class UserAction extends ActionSupport {
	
	private User user;
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String login(){
		System.out.println("name="+user.getName()+"  Pwd="+user.getPassword());
		return SUCCESS;
	}
	
}
