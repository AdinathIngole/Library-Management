package com.LMS.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.LMS.Entity.Book;
import com.LMS.Repository.BookRepository;

@Service
public class BookServiceImpl implements BookService {
	@Autowired
	private BookRepository bookRepository;

	@Override
	public List<Book> getAllBooks() {
		
	List<Book>	booklist = this.bookRepository.findAll();
	System.out.println(booklist);
		return booklist;
	}

	
	@Override
	public Book getBookById(int bookId) {

	
		return bookRepository.findById(bookId).orElse(null);
		//return bookRepository.getById(bookId);
	}

	@Override
	public boolean addBook(Book book) {
		
		Optional<Book> oldbook = this.bookRepository.findById(book.getBookId());
		
		if(oldbook.isEmpty()) {
			
			this.bookRepository.save(book);
			return true;
		}
		
		return false;
	}
	

	@Override
	public void updateBook(Book book) {
	this.bookRepository.save(book);
	}

	@Override
	public void updateAvailability(int bookId, boolean availability) {
		
	}

	@Override
	public void deleteBook(int bookId) {
		this.bookRepository.deleteById(bookId);
		
	}

}
