package com.LMS.Controller;

import java.util.List;
import java.util.Optional;
import java.util.function.Predicate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.LMS.Entity.Book;
import com.LMS.Entity.Checkout;
import com.LMS.Entity.Member;
import com.LMS.Services.BookService;
import com.LMS.Services.CheckoutService;
import com.LMS.Services.MemberService;

import jakarta.validation.Valid;

@Controller
public class CheckoutController {

	@Autowired
	private CheckoutService chechoutService;
	@Autowired
	private BookService bookService;
	@Autowired
	private MemberService memberService;

	private Member member;

	@RequestMapping(value = "/addCheckout", method = RequestMethod.GET)
	public String addCheckoutGet(ModelMap map) {

		Checkout checkout = new Checkout();

		map.addAttribute("checkout", checkout);

		List<Book> book = bookService.getAllBooks();
		List<Member> member = memberService.getAllMembers();

		Predicate<? super Book> predicate = (oldbook) -> oldbook.isAvailability() == true;
		book = book.stream().filter(predicate).toList();

		map.addAttribute("books", book);
		map.addAttribute("members", member);

		return "/AddCheckoutBook";
	}

	@RequestMapping(value = "/addCheckout", method = RequestMethod.POST)
	public String addCheckoutPost(ModelMap map, @Valid Checkout checkout, BindingResult bindingResult) {

		if (bindingResult.hasErrors()) {

			List<Book> book = bookService.getAllBooks();
			List<Member> member = memberService.getAllMembers();

			Predicate<? super Book> predicate = (oldbook) -> oldbook.isAvailability() == true;
			book = book.stream().filter(predicate).toList();

			map.addAttribute("books", book);
			map.addAttribute("members", member);

			return "/AddCheckoutBook";
		}

		// Check if the book is already checked out
		if (chechoutService.isBookCheckedOut(checkout.getBook().getBookId())) {
			List<Book> book = bookService.getAllBooks();
			List<Member> member = memberService.getAllMembers();
			Predicate<? super Book> predicate = (oldbook) -> oldbook.isAvailability() == true;
			book = book.stream().filter(predicate).toList();
			map.addAttribute("books", book);
			map.addAttribute("members", member);
			map.addAttribute("customError", "Book is already checked out");
			return "/AddCheckoutBook";
		}

		boolean isSuccess = this.chechoutService.addCheckout(checkout);
		System.out.println("After Check BookId..");

		if (!isSuccess) {
			System.out.println("inside If..");
			List<Book> book = bookService.getAllBooks();
			List<Member> member = memberService.getAllMembers();

			Predicate<? super Book> predicate = (oldbook) -> oldbook.isAvailability() == true;
			book = book.stream().filter(predicate).toList();

			map.addAttribute("books", book);
			map.addAttribute("members", member);

			map.addAttribute("customError", "Checkout Id Already Exist");
			return "/AddCheckoutBook";
		}

		Book book = bookService.getBookById(checkout.getBook().getBookId());
		System.out.println("Book :" + book);
		Member member = memberService.getMemberById(checkout.getMember().getMemberId());

		checkout.setBook(book);
		checkout.setMember(member);

		if (checkout.getReturnDate() == null) {
			this.bookService.updateAvailability(book.getBookId(), false);
		} else {
			this.bookService.updateAvailability(book.getBookId(), true);
		}

		return "redirect:/AllCheckoutBookList";
	}

	@RequestMapping(value = "/AllCheckoutBookList", method = RequestMethod.GET)
	public String showIssuebookList(ModelMap map) {
		List<Checkout> checkoutList = chechoutService.getAllCheckoutList();
		System.out.println(checkoutList);
		map.addAttribute("checkoutList", checkoutList);
		return "AllCheckoutBookList";
	}

	// Mapping For Deleting/Return Book From Checkout List
	@RequestMapping("/deleteCheckoutBook")
	public String deleteCheckoutBook(@RequestParam("checkoutId") int checkoutId, ModelMap map) {

		this.chechoutService.deleteCheckoutById(checkoutId);

		return "redirect:/AllCheckoutBookList";
	}

}
