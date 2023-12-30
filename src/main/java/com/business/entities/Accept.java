package com.business.entities;

import java.sql.Blob;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Accept {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;	 
	/*
	 * @ManyToOne
	 * 
	 * @JoinColumn(name = "post_id") private Post post;
	 */
	  
	   @ManyToOne
	   private User receiverId;
	   
	   @ManyToOne(fetch = FetchType.LAZY)
	   private User userId;
	   
	   

	public User getUserId() {
		return userId;
	}

	public void setUserId(User userId) {
		this.userId = userId;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	

	

	public User getReceiverId() {
		return receiverId;
	}

	public void setReceiverId(User receiverId) {
		this.receiverId = receiverId;
	}

	public Accept(long id) {
		super();
		this.id = id;
	
		
	}

	public Accept() {
		super();
		// TODO Auto-generated constructor stub
	}
	/*
	 * @Override public String toString() { return "Accept [id=" + id + ", post=" +
	 * post + ", receiverId=" + receiverId + ", userId=" + userId + "]"; }
	 */

	@Override
	public String toString() {
		return "Accept [id=" + id + ", receiverId=" + receiverId + ", userId=" + userId + "]";
	}
	
	   
	

}
