package com.business.entities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Removed {
	
	@Id
	private String id;
	
	
//	private Accept accept;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "Removed [id=" + id + "]";
	}

	public Removed(String id) {
		super();
		this.id = id;
	}

	
    
}
