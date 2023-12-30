package com.business.entities;

import java.util.Arrays;
import java.util.Date;

import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Experience {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long experienceId;
	
     private String title;
	
	
	private String employmentType;
	
	 
	private String companyName;
	
	
	
	@Embedded
	private Location experienceLocation;
	
		private Date startDate;
	
	private Date endDate;
	
	private String experiencDescription;
	
	private String[] skillsUsed;
	
	@ManyToOne
	private User user;

	public long getExperienceId() {
		return experienceId;
	}

	public void setExperienceId(long  experienceId) {
		this.experienceId = experienceId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getEmploymentType() {
		return employmentType;
	}

	public void setEmploymentType(String employmentType) {
		this.employmentType = employmentType;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public Location getExperienceLocation() {
		return experienceLocation;
	}

	public void setExperienceLocation(Location experienceLocation) {
		this.experienceLocation = experienceLocation;
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

	public String getExperiencDescription() {
		return experiencDescription;
	}

	public void setExperiencDescription(String experiencDescription) {
		this.experiencDescription = experiencDescription;
	}

	public String[] getSkillsUsed() {
		return skillsUsed;
	}

	public void setSkillsUsed(String[] skillsUsed) {
		this.skillsUsed = skillsUsed;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Experience [experienceId=" + experienceId + ", title=" + title + ", employmentType=" + employmentType
				+ ", companyName=" + companyName + ", experienceLocation=" + experienceLocation + ", startDate="
				+ startDate + ", endDate=" + endDate + ", experiencDescription=" + experiencDescription
				+ ", skillsUsed=" + Arrays.toString(skillsUsed) + ", user=" + user + "]";
	}

	public Experience(int experienceId, String title, String employmentType, String companyName,
			Location experienceLocation, Date startDate, Date endDate, String experiencDescription, String[] skillsUsed,
			User user) {
		super();
		this.experienceId = experienceId;
		this.title = title;
		this.employmentType = employmentType;
		this.companyName = companyName;
		this.experienceLocation = experienceLocation;
		this.startDate = startDate;
		this.endDate = endDate;
		this.experiencDescription = experiencDescription;
		this.skillsUsed = skillsUsed;
		this.user = user;
	}

	public Experience() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

	

}
