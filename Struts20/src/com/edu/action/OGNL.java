package com.edu.action;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.edu.model.Cat;
import com.edu.model.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
public class OGNL extends ActionSupport {

	private Cat cat;
	
	public Cat getCat() {
		return cat;
	}

	public void setCat(Cat cat) {
		this.cat = cat;
	}

	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
}
