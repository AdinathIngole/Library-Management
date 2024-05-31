package com.LMS.Services;

import java.util.List;
import java.util.Optional;

import com.LMS.Entity.Book;
import com.LMS.Entity.Checkout;

public interface CheckoutService {
	
	public List<Checkout> getAllCheckoutList();
	public Checkout getCheckoutById(int checkoutId);
	public boolean addCheckout(Checkout checkout);
	public void updateCheckout(int checkoutId , Checkout checkout);
	public void deleteCheckoutById(int checkout);
	List<Checkout> getAllCheckoutList(Book book);
	 public boolean isBookCheckedOut(int bookId);
}
