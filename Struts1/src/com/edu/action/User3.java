package com.edu.action;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class User3 extends ActionSupport {
	@Override
	public String execute() throws Exception {
		System.out.println("Action3");
		return SUCCESS;
	}
}
