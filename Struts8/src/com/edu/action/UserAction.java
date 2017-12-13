package com.edu.action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.edu.model.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/***
 * 原始数据类型参数传递：IOC
 * IOC：控制反转
 * 控制反转：原本自己控制的，交由别人控制
 */
@SuppressWarnings("serial")
public class UserAction extends ActionSupport implements ModelDriven<User>{
	
	private User user = new User();
	private HttpServletRequest request;
	private HttpSession session;
	private ServletContext application;
	
	public UserAction(){
		request = ServletActionContext.getRequest();
		session = request.getSession();
		application = session.getServletContext();
	}
	
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
	
	public String login(){
		System.out.println("name="+user.getName()+"  Pwd="+user.getPassword());
		//使用request方式传参
		request.setAttribute("name", user.getName());
		request.setAttribute("password", user.getPassword());
		
		//使用session方式传参
		session.setAttribute("name", user.getName());
		session.setAttribute("password", user.getPassword());
		
		//使用application方式传参
		application.setAttribute("name", user.getName());
		application.setAttribute("password", user.getPassword());
		return SUCCESS;
	}

	public User getModel() {
		return user;
	}
}
