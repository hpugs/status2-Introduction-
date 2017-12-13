package com.edu.action;

import com.opensymphony.xwork2.ActionSupport;

public class OJNL extends ActionSupport{
	
	private String Name;//普通属性不设置默认值
	private Integer age = 18;//为该属性添加默认值

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
	
}
