package com.LMS.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.LMS.Entity.Checkout;

@Repository
public interface CheckoutRepository extends JpaRepository<Checkout, Integer>{

}
