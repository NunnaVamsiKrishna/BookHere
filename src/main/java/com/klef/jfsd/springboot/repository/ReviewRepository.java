package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.klef.jfsd.springboot.model.Review;

public interface ReviewRepository extends CrudRepository<Review, Integer>
{
	@Query("select r from Review r where bookid=?1")
	public List<Review> bookReviews(int bookid);
}
