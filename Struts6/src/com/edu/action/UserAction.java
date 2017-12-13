package com.edu.action;

import java.util.Map;

import com.edu.model.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/***
 * Map方式进行数据传递：IOC（控制反转）
 */
@SuppressWarnings("serial")
public class UserAction extends ActionSupport implements ModelDriven<User>{
	
	private User user = new User();
	private Map request;
	private Map session;
	private Map application;
	
	public UserAction(){
		request = (Map) ActionContext.getContext().get("request");//控制翻转
		session = ActionContext.getContext().getSession();//控制翻转
		application = ActionContext.getContext().getApplication();//控制翻转
	}
	
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
	
	public String login(){
		System.out.println("name="+user.getName()+"  Pwd="+user.getPassword());
		//使用request方式传参
		request.put("name", user.getName()+"");
		request.put("password", user.getPassword()+"");
		
		//使用session方式传参
		session.put("name", user.getName()+"");
		session.put("password", user.getPassword()+"");
		
		//使用application方式传参
		application.put("name", user.getName()+"");
		application.put("password", user.getPassword()+"");
		return SUCCESS;
	}

	public User getModel() {
		return user;
	}
	
}
