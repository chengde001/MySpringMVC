package com.myspringmvc.app.model;

import java.io.Serializable;

public class HelloForm implements Serializable {
	
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
}
