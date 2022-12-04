package com.klef.jfsd.springboot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "seller_table")
public class Seller 
{
	
	
	@Id
	@Column
	@GeneratedValue
	private int sellerid;
	@Column(nullable = false,unique = true)
	private String gmail;
	@Column(nullable = false)
	private String name;
	@Column(nullable = false,unique = true)
	private String retailerid;
	@Column(nullable = false)
	private int no_of_employees;
	@Column(nullable = false)
	private String address;
	@Column(nullable = false,unique = true)
	private String contactno;
	@Column(nullable = false)
	private String password;
	@Column(nullable = false)
	private String sellerstatus;
	@Override
	public String toString() {
		return "Seller [sellerid=" + sellerid + ", gmail=" + gmail + ", name=" + name + ", retailerid=" + retailerid
				+ ", no_of_employees=" + no_of_employees + ", address=" + address + ", contactno=" + contactno
				+ ", password=" + password + ", sellerstatus=" + sellerstatus + "]";
	}
	public int getSellerid() {
		return sellerid;
	}
	public void setSellerid(int sellerid) {
		this.sellerid = sellerid;
	}
	public String getGmail() {
		return gmail;
	}
	public void setGmail(String gmail) {
		this.gmail = gmail;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRetailerid() {
		return retailerid;
	}
	public void setRetailerid(String retailerid) {
		this.retailerid = retailerid;
	}
	public int getNo_of_employees() {
		return no_of_employees;
	}
	public void setNo_of_employees(int no_of_employees) {
		this.no_of_employees = no_of_employees;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
	public String getSellerstatus() {
		return sellerstatus;
	}
	public void setSellerstatus(String sellerstatus) {
		this.sellerstatus = sellerstatus;
	}

	
}
