package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import com.klef.jfsd.springboot.model.Seller;

public interface SellerRepository extends CrudRepository<Seller, Integer>
{
	@Query("select a from Seller a where gmail=?1 and password=?2")
	public Seller checksellerlogin1(String uname,String pwd);
	
	@Query("select a from Seller a where gmail=?1 and sellerstatus='approved'")
	public Seller checksellerlogin2(String uname);
	
	@Query("select a from Seller a where sellerstatus='registered'")
	public List<Seller> validatesellerlist();
	
	@Query("update Seller e set e.sellerstatus='approved' where e.sellerid=?1")
	@Modifying
	@Transactional
	public int approveseller(int sellerid);
	
	@Query("update Seller e set e.sellerstatus='rejected' where e.sellerid=?1")
	@Modifying
	@Transactional
	public int rejectseller(int sellerid);
	
	
}
