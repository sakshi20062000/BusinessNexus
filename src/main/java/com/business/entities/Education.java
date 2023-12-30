package com.business.entities;



import java.util.Arrays;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Education {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long educationId;
	
	@ManyToOne
	private User user;
	
	private String school;
	
	private String degree;
	
	private String fieldOfStudy;
	
	private Date startDate;
	
	private Date endDate;
	
	private String grade;
	
	private String activities;
	
	private String description;
	
	private String[] skills;

	public long getEducationId() {
		return educationId;
	}

	public void setEducationId(long educationId) {
		this.educationId = educationId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public String getFieldOfStudy() {
		return fieldOfStudy;
	}

	public void setFieldOfStudy(String fieldOfStudy) {
		this.fieldOfStudy = fieldOfStudy;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getActivities() {
		return activities;
	}

	public void setActivities(String activities) {
		this.activities = activities;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String[] getSkills() {
		return skills;
	}

	public void setSkills(String[] skills) {
		this.skills = skills;
	}

	public Education(int educationId, User user, String school, String degree, String fieldOfStudy, Date startDate,
			Date endDate, String grade, String activities, String description, String[] skills) {
		super();
		this.educationId = educationId;
		this.user = user;
		this.school = school;
		this.degree = degree;
		this.fieldOfStudy = fieldOfStudy;
		this.startDate = startDate;
		this.endDate = endDate;
		this.grade = grade;
		this.activities = activities;
		this.description = description;
		this.skills = skills;
	}

	@Override
	public String toString() {
		return "Education [educationId=" + educationId + ", user=" + user + ", school=" + school + ", degree=" + degree
				+ ", fieldOfStudy=" + fieldOfStudy + ", startDate=" + startDate + ", endDate=" + endDate + ", grade="
				+ grade + ", activities=" + activities + ", description=" + description + ", skills="
				+ Arrays.toString(skills) + "]";
	}

	public Education() {
		super();
		// TODO Auto-generated constructor stub
	}

	

}
