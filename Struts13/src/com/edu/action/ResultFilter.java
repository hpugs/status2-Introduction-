package com.edu.action;

import com.opensymphony.xwork2.ActionSupport;

public class ResultFilter extends ActionSupport{

	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
	
	//客户端页面跳转
	public String Dispatcher(){
		return SUCCESS;
	}
	
	//服务器端页面跳转
	public String Redirect(){
		return SUCCESS;
	}
	
	//客户端Action跳转
	public String Chain(){
		return SUCCESS;
	}
	
	//服务端Action跳转
	public String RedirectAction(){
		return SUCCESS;
	}
	
}
