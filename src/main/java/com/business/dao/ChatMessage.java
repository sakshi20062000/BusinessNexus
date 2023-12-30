package com.business.dao;

import com.business.controller.MessageType;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ChatMessage {

    private MessageType type;
    private String content;
    private String sender;
	public ChatMessage(Object from, Object text, Object recipient) {
		// TODO Auto-generated constructor stub
	}
	public ChatMessage() {
		// TODO Auto-generated constructor stub
	}
	public void setType(MessageType leave) {
		// TODO Auto-generated method stub
		
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public MessageType getType() {
		return type;
	}
	public Object getFrom() {
		// TODO Auto-generated method stub
		return null;
	}
	public Object getText() {
		// TODO Auto-generated method stub
		return null;
	}
	public Object getRecipient() {
		// TODO Auto-generated method stub
		return null;
	}
	
	/*
	 * public String getSender() {
	 * 
	 * return sender; } public void setSender(String username) { this.sender=sender;
	 * 
	 * }
	 */
}
