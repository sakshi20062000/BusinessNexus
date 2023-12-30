package com.business.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class BusinessInfo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private Long contactNo;
	
	private String emailId;
	
	private String gender;
	
	private String personal_Address;
	
	private Long aadhar_Number;
	
	private String pan_No;
	
	private String business_Name;
	
	private String business_Address;
	
	private String business_type;
	
	private String gstNo;
	
	private Long business_contact;
	
	private String userId;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getContactNo() {
		return contactNo;
	}

	public void setContactNo(Long contactNo) {
		this.contactNo = contactNo;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPersonal_Address() {
		return personal_Address;
	}

	public void setPersonal_Address(String personal_Address) {
		this.personal_Address = personal_Address;
	}

	public Long getAadhar_Number() {
		return aadhar_Number;
	}

	public void setAadhar_Number(Long aadhar_Number) {
		this.aadhar_Number = aadhar_Number;
	}

	public String getPan_No() {
		return pan_No;
	}

	public void setPan_No(String pan_No) {
		this.pan_No = pan_No;
	}

	public String getBusiness_Name() {
		return business_Name;
	}

	public void setBusiness_Name(String business_Name) {
		this.business_Name = business_Name;
	}

	public String getBusiness_Address() {
		return business_Address;
	}

	public void setBusiness_Address(String business_Address) {
		this.business_Address = business_Address;
	}

	public String getBusiness_type() {
		return business_type;
	}

	public void setBusiness_type(String business_type) {
		this.business_type = business_type;
	}

	public String getGstNo() {
		return gstNo;
	}

	public void setGstNo(String gstNo) {
		this.gstNo = gstNo;
	}

	public Long getBusiness_contact() {
		return business_contact;
	}

	public void setBusiness_contact(Long business_contact) {
		this.business_contact = business_contact;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public BusinessInfo(Long id, Long contactNo, String emailId, String gender, String personal_Address,
			Long aadhar_Number, String pan_No, String business_Name, String business_Address, String business_type,
			String gstNo, Long business_contact, String userId) {
		super();
		this.id = id;
		this.contactNo = contactNo;
		this.emailId = emailId;
		this.gender = gender;
		this.personal_Address = personal_Address;
		this.aadhar_Number = aadhar_Number;
		this.pan_No = pan_No;
		this.business_Name = business_Name;
		this.business_Address = business_Address;
		this.business_type = business_type;
		this.gstNo = gstNo;
		this.business_contact = business_contact;
		this.userId = userId;
	}

	public BusinessInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "BusinessInfo [id=" + id + ", contactNo=" + contactNo + ", emailId=" + emailId + ", gender=" + gender
				+ ", personal_Address=" + personal_Address + ", aadhar_Number=" + aadhar_Number + ", pan_No=" + pan_No
				+ ", business_Name=" + business_Name + ", business_Address=" + business_Address + ", business_type="
				+ business_type + ", gstNo=" + gstNo + ", business_contact=" + business_contact + ", userId=" + userId
				+ "]";
	}
	
	

}
