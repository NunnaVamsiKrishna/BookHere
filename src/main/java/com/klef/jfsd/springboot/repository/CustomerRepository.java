package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.klef.jfsd.springboot.model.Customer;

public interface CustomerRepository extends CrudRepository<Customer, Integer>
{
	@Query("select a from Customer a where gmail=?1 and password=?2")
	public Customer checkcustomerlogin(String gmail,String pwd); 
	
	@Query("select a from Customer a where gmail=?1")
	public Customer getCustomerbygmail(String gmail);
	
	
}
