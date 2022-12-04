package com.klef.jfsd.springboot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "customer_table")
public class Customer 
{
	@Id
	@Column
	@GeneratedValue
	private int id;
	@Column(nullable = false,length = 200,unique = true)
	private String gmail;
	@Column(nullable = false)
	private String gender;
	@Column(nullable = false)
	private String name;
	@Column(nullable = false,unique = true)
	private String contactno;
	@Column(nullable = false)
	private String password;
	@Column(nullable = false,length = 200)
	private String location;
	@Column(nullable = false)
	private String city;
	@Column(nullable = false)
	private int pincode;
	@Override
	public String toString() {
		return "Customer [id=" + id + ", gmail=" + gmail + ", gender=" + gender + ", name=" + name + ", contactno="
				+ contactno + ", password=" + password + ", location=" + location + ", city=" + city + ", pincode="
				+ pincode + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getGmail() {
		return gmail;
	}
	public void setGmail(String gmail) {
		this.gmail = gmail;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	
}
