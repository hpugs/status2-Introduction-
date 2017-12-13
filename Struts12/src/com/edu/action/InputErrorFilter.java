package com.edu.action;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class InputErrorFilter extends ActionSupport{

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
	
	public String login(){
		System.out.println(name+"");
		if(name!=null && name.equals("hpu")){
			return SUCCESS;
		}else{
			this.addFieldError("nameError", "用户名输入有误");
			this.addFieldError("nameError", "ul li形式输出错误信息");
			return ERROR;
		}
	}
	
}
