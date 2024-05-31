package com.LMS.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.LMS.Entity.Book;
import com.LMS.Entity.Checkout;
import com.LMS.Repository.CheckoutRepository;

@Service
public class CheckoutServiceImpl implements CheckoutService {
	
	@Autowired
	private CheckoutRepository checkoutRepo;

	@Override
	public List<Checkout> getAllCheckoutList() {
		return this.checkoutRepo.findAll();
	}
	

	@Override
	public Checkout getCheckoutById(int checkoutId) {
	
		return this.checkoutRepo.findById(checkoutId).get();
	}

	@Override
	public boolean addCheckout(Checkout checkout) {
		Optional<Checkout> oldCheckout = this.checkoutRepo.findById(checkout.getCheckoutId());
			
		if(oldCheckout.isEmpty()) {
				this.checkoutRepo.save(checkout);
				return true;
			}
		return false;
	}

	@Override
	public void updateCheckout(int checkoutId, Checkout checkout) {
		this.checkoutRepo.save(checkout);
		
	}

	@Override
	public void deleteCheckoutById(int checkoutId) {
		
		this.checkoutRepo.deleteById(checkoutId);
		
	}


	@Override
	public List<Checkout> getAllCheckoutList(Book book) {
		
		return checkoutRepo.findAll();
	}


	@Override
	 public boolean isBookCheckedOut(int bookId) {
	        Optional<Checkout> checkouts = checkoutRepo.findById(bookId);
	        return !checkouts.isEmpty();
	    }

}
