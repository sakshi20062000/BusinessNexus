package com.transport.entites;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name = "user")
public class user {
		
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private Integer id;
		
		
		private String UserName;
		
		
		private String emailAddress;
		
		
		private String Password;
		
		private String category;
		
		
		public user(Integer id, String userName, String emailAddress, String password, String category,
				String textinformation) {
			super();
			this.id = id;
			UserName = userName;
			this.emailAddress = emailAddress;
			Password = password;
			this.category = category;
			Textinformation = textinformation;
		}


		public String getCategory() {
			return category;
		}


		public void setCategory(String category) {
			this.category = category;
		}


		public user() {
			super();
			// TODO Auto-generated constructor stub
		}


		public user(Integer id, String userName, String emailAddress, String password, String textinformation) {
			super();
			this.id = id;
			UserName = userName;
			emailAddress = emailAddress;
			Password = password;
			Textinformation = textinformation;
		}


		@Override
		public String toString() {
			return "user [id=" + id + ", UserName=" + UserName + ", emailAddress=" + emailAddress + ", Password="
					+ Password + ", category=" + category + ", Textinformation=" + Textinformation + "]";
		}


		public Integer getId() {
			return id;
		}


		public void setId(Integer id) {
			this.id = id;
		}


		public String getUserName() {
			return UserName;
		}


		public void setUserName(String userName) {
			UserName = userName;
		}


		public String getEmailAddress() {
			return emailAddress;
		}


		public void setEmailAddress(String emailAddress) {
			this.emailAddress = emailAddress;
		}


		public String getPassword() {
			return Password;
		}


		public void setPassword(String password) {
			Password = password;
		}


		public String getTextinformation() {
			return Textinformation;
		}


		public void setTextinformation(String textinformation) {
			Textinformation = textinformation;
		}


		private String Textinformation;

		
}
