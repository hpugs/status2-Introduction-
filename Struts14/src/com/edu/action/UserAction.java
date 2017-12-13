package com.edu.action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.edu.model.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/***
 * Struts2配置文件包含
 * 默认action设置
 */
@SuppressWarnings("serial")
public class UserAction extends ActionSupport implements ModelDriven<User>,ServletRequestAware{
	
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

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		session = request.getSession();
		application = session.getServletContext();
	}
}
