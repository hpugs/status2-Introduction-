package com.edu.action;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.edu.model.Cat;
import com.edu.model.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
public class OGNL extends ActionSupport{
	
	//静态属性
	public static final Date YEAR = new Date();
	
	//静态方法
	public static String GetDate(){
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy年MM月dd日  HH:mm:ss");
		return simpleDateFormat.format(new Date());
	}
	
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
	
}
