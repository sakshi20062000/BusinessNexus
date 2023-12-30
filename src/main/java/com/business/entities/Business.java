package com.business.entities;

import java.sql.Blob;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;

@Entity
public class Business {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long businessId;
	
	
	@ManyToOne
	private User user;
	
	@Lob
	private Blob logo;
	
	private String companyName;
	
	
	private String tagLine;
	
	private String websiteUrl;
	
	private String industry;
	
	private String companySize;
	
	private String companyType;
	
	private long phoneNo;
	
	private int yearFounded;
	
	private String description;
	
	private Location businessLocation;
	
	private String companyPan;
	
	private String companyGst;
	
	private String companyRegistration;
	
	/*
	 * private int flag1;
	 * 
	 * private int flag2;
	 * 
	 * private int flag3;
	 */
	
	@Lob
     private Blob panImage;
     
	@Lob
     private Blob gstImage;
     
	@Lob
     private Blob companyRegistrationImage;
	
	private String linkedinLink;
	
	private String twitterLink;
	
	private  String facebookLink;
	
	private String instagramLink;
	
 	
	
	public String getLinkedinLink() {
		return linkedinLink;
	}

	public void setLinkedinLink(String linkedinLink) {
		this.linkedinLink = linkedinLink;
	}

	public String getTwitterLink() {
		return twitterLink;
	}

	public void setTwitterLink(String twitterLink) {
		this.twitterLink = twitterLink;
	}

	public String getFacebookLink() {
		return facebookLink;
	}

	public void setFacebookLink(String facebookLink) {
		this.facebookLink = facebookLink;
	}

	public String getInstagramLink() {
		return instagramLink;
	}

	public void setInstagramLink(String instagramLink) {
		this.instagramLink = instagramLink;
	}

	public Business(int businessId, User user, Blob logo, String companyName, String tagLine, String websiteUrl,
			String industry, String companySize, String companyType, long phoneNo, int yearFounded, String description,
			Location businessLocation, String companyPan, String companyGst, String companyRegistration, Blob panImage,
			Blob gstImage, Blob companyRegistrationImage) {
		super();
		this.businessId = businessId;
		this.user = user;
		this.logo = logo;
		this.companyName = companyName;
		this.tagLine = tagLine;
		this.websiteUrl = websiteUrl;
		this.industry = industry;
		this.companySize = companySize;
		this.companyType = companyType;
		this.phoneNo = phoneNo;
		this.yearFounded = yearFounded;
		this.description = description;
		this.businessLocation = businessLocation;
		this.companyPan = companyPan;
		this.companyGst = companyGst;
		this.companyRegistration = companyRegistration;
		this.panImage = panImage;
		this.gstImage = gstImage;
		this.companyRegistrationImage = companyRegistrationImage;
	}

	@Override
	public String toString() {
		return "Business [linkedinLink=" + linkedinLink + ", twitterLink=" + twitterLink + ", facebookLink="
				+ facebookLink + ", instagramLink=" + instagramLink + "]";
	}

	public Blob getPanImage() {
		return panImage;
	}

	public void setPanImage(Blob panImage) {
		this.panImage = panImage;
	}

	public Blob getGstImage() {
		return gstImage;
	}

	public void setGstImage(Blob gstImage) {
		this.gstImage = gstImage;
	}

	public Blob getCompanyRegistrationImage() {
		return companyRegistrationImage;
	}

	public void setCompanyRegistrationImage(Blob companyRegistrationImage) {
		this.companyRegistrationImage = companyRegistrationImage;
	}

	public long getBusinessId() {
		return businessId;
	}

	public void setBusinessId(long businessId) {
		this.businessId = businessId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Blob getLogo() {
		return logo;
	}

	public void setLogo(Blob logo) {
		this.logo = logo;
	}

	

	public String getTagLine() {
		return tagLine;
	}

	public void setTagLine(String tagLine) {
		this.tagLine = tagLine;
	}

	public String getWebsiteUrl() {
		return websiteUrl;
	}

	public void setWebsiteUrl(String websiteUrl) {
		this.websiteUrl = websiteUrl;
	}

	public String getIndustry() {
		return industry;
	}

	public void setIndustry(String industry) {
		this.industry = industry;
	}

	public String getCompanySize() {
		return companySize;
	}

	public void setCompanySize(String companySize) {
		this.companySize = companySize;
	}

	public String getCompanyType() {
		return companyType;
	}

	public void setCompanyType(String companyType) {
		this.companyType = companyType;
	}

	public long getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(long phoneNo) {
		this.phoneNo = phoneNo;
	}

	public int getYearFounded() {
		return yearFounded;
	}

	public void setYearFounded(int yearFounded) {
		this.yearFounded = yearFounded;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}



	public String getCompanyRegistration() {
		return companyRegistration;
	}

	public void setCompanyRegistration(String companyRegistration) {
		this.companyRegistration = companyRegistration;
	}

	public Business() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Location getBusinessLocation() {
		return businessLocation;
	}

	public void setBusinessLocation(Location businessLocation) {
		this.businessLocation = businessLocation;
	}

	public String getCompanyPan() {
		return companyPan;
	}

	public void setCompanyPan(String companyPan) {
		this.companyPan = companyPan;
	}

	public String getCompanyGst() {
		return companyGst;
	}

	public void setCompanyGst(String companyGst) {
		this.companyGst = companyGst;
	}

	public Business(int businessId, User user, Blob logo, String companyName, String tagLine, String websiteUrl,
			String industry, String companySize, String companyType, long phoneNo, int yearFounded, String description,
			Location businessLocation, String companyPan, String companyGst, String companyRegistration) {
		super();
		this.businessId = businessId;
		this.user = user;
		this.logo = logo;
		this.companyName = companyName;
		this.tagLine = tagLine;
		this.websiteUrl = websiteUrl;
		this.industry = industry;
		this.companySize = companySize;
		this.companyType = companyType;
		this.phoneNo = phoneNo;
		this.yearFounded = yearFounded;
		this.description = description;
		this.businessLocation = businessLocation;
		this.companyPan = companyPan;
		this.companyGst = companyGst;
		this.companyRegistration = companyRegistration;
	}
   
	
	
	
	
	
	

}
