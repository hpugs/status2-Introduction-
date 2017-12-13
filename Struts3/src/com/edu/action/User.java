package com.edu.action;

import com.opensymphony.xwork2.ActionSupport;

/***
 * 最基本的接收参数形式
 * @author jho
 * http://localhost:8080/Struts3/index!login?name="123"&password="456"
 */
@SuppressWarnings("serial")
public class User extends ActionSupport {
	
	private String name;
	private int pwd;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPwd() {
		return pwd;
	}

	public void setPwd(int pwd) {
		this.pwd = pwd;
	}
	
	public String login(){
		System.out.println("name="+name+"  Pwd="+pwd);
		if(123456==pwd){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	
}
