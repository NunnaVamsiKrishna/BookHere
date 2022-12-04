package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Book;
import com.klef.jfsd.springboot.repository.BookRepository;

@Service
public class BookServiceImpl implements BookService
{
	
	@Autowired
	private BookRepository bookRepository;

	@Override
	public Book addbook(Book book) {
		return bookRepository.save(book);
	}

	@Override
	public List<Book> getbooksbysellerid(int id) {
		return bookRepository.getbooksbysellerid(id);
	}

	@Override
	public void deletebookbyid(int id) {
		bookRepository.deleteById(id);
	}

	@Override
	public List<Book> booklist() {
		return (List<Book>) bookRepository.findAll();
	}

	@Override
	public Book getbookbyid(int id) {
		return bookRepository.findById(id).get()	;
	}

	
}
