package com.klef.jfsd.springboot.model;

import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "review_table")
public class Review 
{
	@Id
	@Column
	private int orderid;
	@Column(nullable = false)
	private int customerid;
	@Column(nullable = false)
	private int rating;
	@Column(nullable = false)
	private String customername;
	@Column(nullable = false)
	private int bookid;
	@Column(nullable = false,length = 500)
	private String description;
	@Column
	private Blob review_image;
	@Override
	public String toString() {
		return "Review [orderid=" + orderid + ", customerid=" + customerid + ", rating=" + rating + ", customername="
				+ customername + ", bookid=" + bookid + ", description=" + description + ", review_image="
				+ review_image + "]";
	}
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	public int getCustomerid() {
		return customerid;
	}
	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public String getCustomername() {
		return customername;
	}
	public void setCustomername(String customername) {
		this.customername = customername;
	}
	public int getBookid() {
		return bookid;
	}
	public void setBookid(int bookid) {
		this.bookid = bookid;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Blob getReview_image() {
		return review_image;
	}
	public void setReview_image(Blob review_image) {
		this.review_image = review_image;
	}
	
}
