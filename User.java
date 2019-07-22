package com.lti.model;

import java.sql.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;
@Component
@Entity
	@Table(name = "Usersexam")
	public class User {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "user_id", length =5)
	private int userId;

	@Column(name = "user_name", length =20)
	private String userName;

	@Column(name = "user_email", length =35)
	private String userEmail;
 
	@Column(name = "password", length =15)
	private String password;

	@Column(name = "phone_no", length =15)
	private long phoneNo;

	@Column(name = "city", length =15)
	private String city;
	
	@Column(name = "State", length =15)
	private String State;
	
	@Column(name = "Qualification", length =5)
	private String qualification;
	
@OneToOne
private Exam examdetails;

	public User() {
		super();
	}
	public User(String userName, String userEmail, String password, long phoneNo, String city, String state,
			String qualification) {
		super();
		
		this.userName = userName;
		this.userEmail = userEmail;
		this.password = password;
		this.phoneNo = phoneNo;
		this.city = city;
		State = state;
		this.qualification = qualification;
	}


	public void setUserId(int userId) {
	this.userId = userId;
	}

	public int getUserId() {
	return userId;
	}

	public void setUserEmail(String userEmail) {
	this.userEmail = userEmail;
	}

	public String getUserEmail() {
	return userEmail;
	}

	public void setUserName(String userName) {
	this.userName = userName;
	}

	public String getUserName() {
	return userName;
	}

	public void setPassword(String password) {
	this.password = password;
	}

	public String getPassword() {
	return password;
	}

	public void setPhoneNo(long phoneNo) {
	this.phoneNo = phoneNo;
	}

	public double getPhoneNo() {
	return phoneNo;
	}
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return State;
	}

	public void setState(String state) {
		State = state;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", userEmail=" + userEmail + ", password="
				+ password + ", phoneNo=" + phoneNo + ", city=" + city + ", State=" + State + ", qualification="
				+ qualification + "]";
	}

	

	

	
	}

