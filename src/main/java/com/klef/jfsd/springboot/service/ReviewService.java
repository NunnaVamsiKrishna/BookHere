package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Review;

public interface ReviewService 
{
	public Review addReview(Review review);
	public List<Review> bookReviews(int bookid);
	public Review getreviewbyid(int id);
}
