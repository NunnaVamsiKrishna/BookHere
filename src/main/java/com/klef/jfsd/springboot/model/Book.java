package com.klef.jfsd.springboot.model;

import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "book_table")
public class Book {
	
	@Id
	@Column
	@GeneratedValue
	private int id;
	@Column(nullable = false)
	private String name;
	@Column(nullable = false)
	private int sellerid;
	@Column(nullable = false,length = 400)
	private String description;
	@Column(nullable = false)
	private int rating;
	@Column(nullable = false)
	private double price;
	@Column(nullable = false)
	private int stock;
	@Column(nullable = false)
	private String seller;// is seller selling this or customer selling
	@Column(nullable = false)
	private Blob image1;
	@Column(nullable = false)
	private Blob image2;
	@Column(nullable = false)
	private Blob image3;
	@Column(nullable = false)
	private Blob image4;
	
	@Override
	public String toString() {
		return "Book [id=" + id + ", name=" + name + ", sellerid=" + sellerid + ", description=" + description
				+ ", rating=" + rating + ", price=" + price + ", stock=" + stock + ", seller=" + seller + ", image1="
				+ image1 + ", image2=" + image2 + ", image3=" + image3 + ", image4=" + image4 + "]";
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getSellerid() {
		return sellerid;
	}
	public void setSellerid(int sellerid) {
		this.sellerid = sellerid;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getSeller() {
		return seller;
	}
	public void setSeller(String seller) {
		this.seller = seller;
	}
	public Blob getImage1() {
		return image1;
	}
	public void setImage1(Blob image1) {
		this.image1 = image1;
	}
	public Blob getImage2() {
		return image2;
	}
	public void setImage2(Blob image2) {
		this.image2 = image2;
	}
	public Blob getImage3() {
		return image3;
	}
	public void setImage3(Blob image3) {
		this.image3 = image3;
	}
	public Blob getImage4() {
		return image4;
	}
	public void setImage4(Blob image4) {
		this.image4 = image4;
	}
	
}
