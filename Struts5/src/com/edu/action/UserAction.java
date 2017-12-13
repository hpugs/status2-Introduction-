package com.edu.action;

import com.edu.model.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/***
 * ModelDriven
 * @author jho
 * http://localhost:8080/Struts5/index!login?name="123"&password="456"
 */
@SuppressWarnings("serial")
public class UserAction extends ActionSupport implements ModelDriven<User>{
	
	private User user = new User();
	
	public String login(){
		System.out.println("name="+user.getName()+"  Pwd="+user.getPassword());
		return SUCCESS;
	}

	public User getModel() {
		return user;
	}
	
}
