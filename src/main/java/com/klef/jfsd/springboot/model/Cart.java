package com.klef.jfsd.springboot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "cart_table")
public class Cart 
{
	@Id
	@GeneratedValue
	@Column
	private int cart_id;
	@Column
	private int customer_id;
	@Column
	private int seller_id;
	@Column
	private int book_id;
	@Column
	private String book_name;
	@Column
	private double book_price;
	@Override
	public String toString() {
		return "Cart [cart_id=" + cart_id + ", customer_id=" + customer_id + ", seller_id=" + seller_id + ", book_id="
				+ book_id + ", book_name=" + book_name + ", book_price=" + book_price + "]";
	}
	public int getCart_id() {
		return cart_id;
	}
	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}
	public int getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}
	public int getSeller_id() {
		return seller_id;
	}
	public void setSeller_id(int seller_id) {
		this.seller_id = seller_id;
	}
	public int getBook_id() {
		return book_id;
	}
	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public double getBook_price() {
		return book_price;
	}
	public void setBook_price(double book_price) {
		this.book_price = book_price;
	}
}
