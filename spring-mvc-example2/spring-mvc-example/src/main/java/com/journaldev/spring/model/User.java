package com.journaldev.spring.model;

public class User {
	private String userName;
	private String password;
	private String address;
	private String gender;
	private boolean isReceivePaper;
	private String country;
	private String[] skills;
	
	
	
	public String[] getSkills() {
		return skills;
	}

	public void setSkills(String[] skills) {
		this.skills = skills;
	}

	public boolean isReceivePaper() {
		return isReceivePaper;
	}

	public void setReceivePaper(boolean isReceivePaper) {
		this.isReceivePaper = isReceivePaper;
	}

	public String getGender() {
		return gender;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
}

