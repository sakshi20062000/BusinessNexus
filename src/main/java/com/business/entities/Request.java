package com.business.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.ManyToOne;

@Entity
public class Request {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long requestId;
	
	@ManyToOne
	private User user;
	 
	private String status;
	
	@ManyToOne 
	private User sendId;

	public long getRequestId() {
		return requestId;
	}

	public void setRequestId(long requestId) {
		this.requestId = requestId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	

	public User getSendId() {
		return sendId;
	}

	public void setSendId(User sendId) {
		this.sendId = sendId;
	}

	public Request(long requestId, User user) {
		super();
		this.requestId = requestId;
		this.user = user;
	}
	
	

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Request() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Request [requestId=" + requestId + ", user=" + user + ", status=" + status + ", sendId=" + sendId + "]";
	}

	
	
	
	
	
	
	
	

}
