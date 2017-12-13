package com.edu.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.edu.model.Cat;
import com.edu.model.Dog;
import com.edu.model.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
public class OGNL extends ActionSupport implements ModelDriven<User>{
	
	private String name;
	
	private User user = new User();
	
	private Cat cat = new Cat();

	private List<User> users = new ArrayList<User>();
	
	private Set<Dog> dogs = new HashSet<Dog>();
	
	private Map<String, Dog> dogMap = new HashMap<String, Dog>();
	
	//每次访问Action都会执行，放置一些类的初始化操作
	public OGNL(){
		users.add(new User(1));
		users.add(new User(2));
		users.add(new User(3));
		
		dogs.add(new Dog("dog1"));
		dogs.add(new Dog("dog2"));
		dogs.add(new Dog("dog3"));
		
		dogMap.put("dog11", new Dog("dog11"));
		dogMap.put("dog22", new Dog("dog22"));
		dogMap.put("dog33", new Dog("dog33"));
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public Cat getCat() {
		return cat;
	}

	public void setCat(Cat cat) {
		this.cat = cat;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public Set<Dog> getDogs() {
		return dogs;
	}

	public void setDogs(Set<Dog> dogs) {
		this.dogs = dogs;
	}

	public Map<String, Dog> getDogMap() {
		return dogMap;
	}

	public void setDogMap(Map<String, Dog> dogMap) {
		this.dogMap = dogMap;
	}
	
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}

	public User getModel() {
		return user;
	}
	
}
