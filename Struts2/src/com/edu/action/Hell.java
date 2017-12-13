package com.edu.action;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class Hell extends ActionSupport{

	public String execute() throws Exception {
		return SUCCESS;
	}
	
	public String addLogin(){
		return ERROR;
	}
}
