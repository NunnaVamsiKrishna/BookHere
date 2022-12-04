package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Book;

public interface BookService {
	public Book addbook(Book book);
	public List<Book> getbooksbysellerid(int id);
	public void deletebookbyid(int id);
	public List<Book> booklist();
	public Book getbookbyid(int id);
}
