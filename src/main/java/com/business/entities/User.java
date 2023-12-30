package com.business.entities;

import java.sql.Blob;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long userId;

	private String firstName;
	
	private String password;

	private String lastName;

	private String additionlName;

	private String headLine;

	private String industry;

	@Embedded
	private Location userLocation;

	private String email;

	private String phoneNumber;

	private String birthDate;

	private String about;

	private String[] interest_In;

	@Lob
	@Basic(fetch = FetchType.LAZY)
	@JsonIgnore
	private Blob photo;
	
	@Lob
	@Basic(fetch = FetchType.LAZY)
	@JsonIgnore
	private Blob banner;
	
	//private String confirmPassword;
	
	
	    @Column(name = "created_at")
	    @Temporal(TemporalType.TIMESTAMP)
	    private Date createdAt;
	
	public Blob getBanner() {
		return banner;
	}

	public void setBanner(Blob banner) {
		this.banner = banner;
	}

	@OneToMany(mappedBy = "user",fetch = FetchType.EAGER	)
	private List<Education> educationId;

	@OneToMany(mappedBy = "user")
	private List<Business> business;
     
	@OneToMany(mappedBy = "user")
	private List<Request> request;
	
	@OneToMany(mappedBy = "user")
	private List<Experience> experience;
	
	@OneToMany(mappedBy = "userId")
	private List<Accept> acceptId;
	
	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getAdditionlName() {
		return additionlName;
	}

	public void setAdditionlName(String additionlName) {
		this.additionlName = additionlName;
	}

	public String getHeadLine() {
		return headLine;
	}

	public void setHeadLine(String headLine) {
		this.headLine = headLine;
	}

	public String getIndustry() {
		return industry;
	}

	public void setIndustry(String industry) {
		this.industry = industry;
	}

	
	public Location getUserLocation() {
		return userLocation;
	}

	public void setUserLocation(Location userLocation) {
		this.userLocation = userLocation;
	}

	public List<Experience> getExperience() {
		return experience;
	}

	public void setExperience(List<Experience> experience) {
		this.experience = experience;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}

	public String getAbout() {
		return about;
	}

	public void setAbout(String about) {
		this.about = about;
	}

	
	public String[] getInterest_In() {
		return interest_In;
	}

	public void setInterest_In(String[] interest_In) {
		this.interest_In = interest_In;
	}

	public Blob getPhoto() {
		return photo;
	}

	public void setPhoto(Blob photo) {
		this.photo = photo;
	}

	public List<Education> getEducationId() {
		return educationId;
	}

	public void setEducationId(List<Education> educationId) {
		this.educationId = educationId;
	}

	public List<Business> getBusiness() {
		return business;
	}

	public void setBusiness(List<Business> business) {
		this.business = business;
	}

	
	
	

	

	

	public List<Request> getRequest() {
		return request;
	}

	public void setRequest(List<Request> request) {
		this.request = request;
	}

	/*
	 * public String getConfirmPassword() { return confirmPassword; }
	 * 
	 * public void setConfirmPassword(String confirmPassword) { this.confirmPassword
	 * = confirmPassword; }
	 */
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	

	public User(long userId, String firstName, String password, String lastName, String additionlName, String headLine,
			String industry, Location userLocation, String email, String phoneNumber, String birthDate, String about,
			String[] interest_In, Blob photo, Blob banner, String confirmPassword, Date createdAt,
			List<Education> educationId, List<Business> business, List<Request> request, List<Experience> experience) {
		super();
		this.userId = userId;
		this.firstName = firstName;
		this.password = password;
		this.lastName = lastName;
		this.additionlName = additionlName;
		this.headLine = headLine;
		this.industry = industry;
		this.userLocation = userLocation;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.birthDate = birthDate;
		this.about = about;
		this.interest_In = interest_In;
		this.photo = photo;
		this.banner = banner;
		//this.confirmPassword = confirmPassword;
		this.createdAt = createdAt;
		this.educationId = educationId;
		this.business = business;
		this.request = request;
		this.experience = experience;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", firstName=" + firstName + ", password=" + password + ", lastName="
				+ lastName + ", additionlName=" + additionlName + ", headLine=" + headLine + ", industry=" + industry
				+ ", userLocation=" + userLocation + ", email=" + email + ", phoneNumber=" + phoneNumber
				+ ", birthDate=" + birthDate + ", about=" + about + ", interest_In=" + Arrays.toString(interest_In)
				+ ", photo=" + photo + ", banner=" + banner + ", confirmPassword="  + ", createdAt="
				+ createdAt + "]";
	}

	


	
  
	
	
	

}
