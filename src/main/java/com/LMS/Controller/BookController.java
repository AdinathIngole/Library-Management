package com.LMS.Controller;

import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import com.LMS.Entity.Book;
import com.LMS.Entity.Member;
import com.LMS.Services.BookService;
import com.LMS.Services.MemberService;
import jakarta.validation.Valid;

@Controller
public class BookController {

	@Autowired
	private BookService bookService;
	//@Autowired
	//private MemberService memberService;

	// Handeller for Admin Home Page
	@RequestMapping("/adminHome")
	public String HomePage() {
		return "adminHome";
	}

	// Handeller For Getting All Book List in Admin DashBoard
	@RequestMapping("/bookLists")
	public String bookLists(ModelMap map) {
		List <Book >booklist = bookService.getAllBooks();
		System.out.println("Book List : " +booklist);
		map.addAttribute("bookList", booklist);
		return "booksList";
	}

	// Handeller For Getting All Book List in User DashBoard
	@RequestMapping("/showBookList")
	public String ShowBookLists(ModelMap map) {
		map.addAttribute("bookList", bookService.getAllBooks());
		return "showBookList";
	}

	// Handeller For Adding Book in Book list by Admin side
	@RequestMapping("/addbooks")
	public String addBook(ModelMap map, @Valid Book book, BindingResult bindingResult) {

		if (bindingResult.hasErrors()) {
			return "addbook";
		}

		boolean isSuccess = this.bookService.addBook(book);

		if (!isSuccess) {
			map.addAttribute("customError", "Book Id Already Exist");
			return "addbook";
		}

		return "redirect:/bookLists";
	}

	// Display the edit book form
	@GetMapping("/editbook")
	public String showEditForm(@RequestParam("bookId") int bookId, ModelMap modelmap) {
		Book book = (Book) bookService.getBookById(bookId);
		System.out.println("Book by BookId is  = " +book);
		if (((Book) book).isAvailability()) {
			modelmap.addAttribute("book", book.getBookId());
			return "editBook";
		} else {
			// Handle book not found error
			return "errorPage";
		}
	}

	// Handle form submission for editing book
	@PostMapping("/editBook")
	public String editBook(@ModelAttribute("book") Book book) {
		System.out.println(book);
		bookService.updateBook(book);
		return "redirect:/bookLists";
	}

	// handeller For Deleting book by BookId
	@RequestMapping("/deletebook")
	public String deleteBook(@RequestParam("bookId") int bookId, ModelMap map) {

		this.bookService.deleteBook(bookId);

		return "redirect:/bookLists";
	}

}
