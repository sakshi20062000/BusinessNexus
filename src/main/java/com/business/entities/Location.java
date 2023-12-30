package com.business.entities;

import javax.persistence.Embeddable;

@Embeddable
public class Location {
	
	private String street1;
	
	private String street2;
	
	private String city;
	
	private String state;
	
	private String country;
	
	private String pinCode;

	public String getStreet1() {
		return street1;
	}

	public void setStreet1(String street1) {
		this.street1 = street1;
	}

	public String getStreet2() {
		return street2;
	}

	public void setStreet2(String street2) {
		this.street2 = street2;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getPinCode() {
		return pinCode;
	}

	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}

	public Location() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Location(String street1, String street2, String city, String state, String country, String pinCode) {
		super();
		this.street1 = street1;
		this.street2 = street2;
		this.city = city;
		this.state = state;
		this.country = country;
		this.pinCode = pinCode;
	}

	@Override
	public String toString() {
		return "Location [street1=" + street1 + ", street2=" + street2 + ", city=" + city + ", state=" + state
				+ ", country=" + country + ", pinCode=" + pinCode + "]";
	}
	
	
	
	

}
