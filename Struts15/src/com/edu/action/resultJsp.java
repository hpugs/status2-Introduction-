package com.edu.action;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class resultJsp extends ActionSupport{
	private String name;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
}
