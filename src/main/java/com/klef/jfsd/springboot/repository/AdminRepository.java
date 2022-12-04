package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.klef.jfsd.springboot.model.Admin;

public interface AdminRepository extends CrudRepository<Admin, String>
{
	@Query("select a from Admin a where username=?1 and password=?2")
	public Admin checkadminlogin(String uname,String pwd); 
}
