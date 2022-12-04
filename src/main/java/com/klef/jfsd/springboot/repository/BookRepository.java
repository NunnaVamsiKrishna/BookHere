package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.klef.jfsd.springboot.model.Book;

public interface BookRepository extends CrudRepository<Book, Integer>
{
	@Query("select b from Book b where sellerid=?1")
	public List<Book> getbooksbysellerid(int id);
}
