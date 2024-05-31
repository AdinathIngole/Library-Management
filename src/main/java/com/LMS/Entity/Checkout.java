package com.LMS.Entity;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;


@Entity
public class Checkout {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int checkoutId;
	
	@OneToOne
	private Book book;

	@ManyToOne
	private Member member;
	
	private LocalDate checkoutDate;
	
	private LocalDate dueDate;
	
	private LocalDate returnDate;

	public Checkout() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Checkout(int checkoutId, Book book, Member member, LocalDate checkoutDate, LocalDate dueDate,
			LocalDate returnDate) {
		super();
		this.checkoutId = checkoutId;
		this.book = book;
		this.member = member;
		this.checkoutDate = checkoutDate;
		this.dueDate = dueDate;
		this.returnDate = returnDate;
	}

	public int getCheckoutId() {
		return checkoutId;
	}

	public void setCheckoutId(int checkoutId) {
		this.checkoutId = checkoutId;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public LocalDate getCheckoutDate() {
		return checkoutDate;
	}

	public void setCheckoutDate(LocalDate checkoutDate) {
		this.checkoutDate = checkoutDate;
	}

	public LocalDate getDueDate() {
		return dueDate;
	}

	public void setDueDate(LocalDate dueDate) {
		this.dueDate = dueDate;
	}

	public LocalDate getReturnDate() {
		return returnDate;
	}

	public void setReturnDate(LocalDate returnDate) {
		this.returnDate = returnDate;
	}

	@Override
	public String toString() {
		return "Checkout [checkoutId=" + checkoutId + ", book=" + book + ", member=" + member + ", checkoutDate="
				+ checkoutDate + ", dueDate=" + dueDate + ", returnDate=" + returnDate + "]";
	}
	
	
}
