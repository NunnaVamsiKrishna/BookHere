package com.klef.jfsd.springboot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "order_table")
public class Order 
{
	@Id
	@Column
	@GeneratedValue
	private int orderid;
	@Column(nullable = false)
	private int bookid;
	@Column(nullable = false)
	private String bookname;
	@Column(nullable = false)
	private int customerid;
	@Column(nullable = false)
	private int sellerid;
	@Column(nullable = false)
	private String status;
	@Column(nullable = false)
	private double bookprice;
	@Override
	public String toString() {
		return "Order [orderid=" + orderid + ", bookid=" + bookid + ", bookname=" + bookname + ", customerid="
				+ customerid + ", sellerid=" + sellerid + ", status=" + status + ", bookprice=" + bookprice + "]";
	}
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	public int getBookid() {
		return bookid;
	}
	public void setBookid(int bookid) {
		this.bookid = bookid;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public int getCustomerid() {
		return customerid;
	}
	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}
	public int getSellerid() {
		return sellerid;
	}
	public void setSellerid(int sellerid) {
		this.sellerid = sellerid;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public double getBookprice() {
		return bookprice;
	}
	public void setBookprice(double bookprice) {
		this.bookprice = bookprice;
	}
	
}
