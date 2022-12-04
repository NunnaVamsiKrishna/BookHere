package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Review;
import com.klef.jfsd.springboot.repository.ReviewRepository;

@Service
public class ReviewServiceImpl implements ReviewService
{
	@Autowired
	public ReviewRepository reviewRepository;

	@Override
	public Review addReview(Review review) {
		return reviewRepository.save(review);
	}

	@Override
	public List<Review> bookReviews(int bookid) {
		return reviewRepository.bookReviews(bookid);
	}

	@Override
	public Review getreviewbyid(int id) {
		return reviewRepository.findById(id).get();
	}
	
}
