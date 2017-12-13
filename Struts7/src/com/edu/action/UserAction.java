package com.edu.action;

import java.util.Map;

import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.edu.model.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/***
 * Map方式进行数据传递：依赖Struts2
 */
@SuppressWarnings("serial")
public class UserAction extends ActionSupport implements ModelDriven<User>,RequestAware,SessionAware,ApplicationAware{
	
	private User user = new User();
	private Map<String, Object> request;
	private Map<String, Object> session;
	private Map<String, Object> application;
	
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
	
	public String login(){
		System.out.println("name="+user.getName()+"  Pwd="+user.getPassword());
		//使用request方式传参
		request.put("name", user.getName());
		request.put("password", user.getPassword());
		
		//使用session方式传参
		session.put("name", user.getName());
		session.put("password", user.getPassword());
		
		//使用application方式传参
		application.put("name", user.getName());
		application.put("password", user.getPassword());
		return SUCCESS;
	}

	public User getModel() {
		return user;
	}

	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public void setApplication(Map<String, Object> application) {
		this.application = application;
	}
	
}
