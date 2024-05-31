package com.LMS.Services;

import java.util.List;
import java.util.Optional;

import com.LMS.Entity.Book;

public interface BookService {
	public List<Book> getAllBooks();
	public Book getBookById(int bookId);
	//public PaginationResult<Book> getPaginatedBooks(int currentPage, int pageSize);
	public boolean addBook(Book book);
	public void updateBook(Book book);
	public void updateAvailability(int bookId,boolean availability);
	public void deleteBook(int bookId);

}
