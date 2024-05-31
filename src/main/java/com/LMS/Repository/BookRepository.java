package com.LMS.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.LMS.Entity.Book;
@Repository
public interface BookRepository extends JpaRepository<Book, Integer> {

}
