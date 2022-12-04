package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Customer;

public interface CustomerService {
	public Customer addcustomer(Customer customer);
	public Customer checkcustomerlogin(String uname,String pwd);
	public Customer getcustomerbygmail(String gmail);
	public Customer updatecustomer(Customer customer);
}
