package com.LMS.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Entity
public class Book {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int bookId;
	
	@NotNull(message = "Book Name cannot be empty")
    @Size(min = 2, max = 100, message = "Book Name must be between 2 and 100 characters")
	private String bookName;
	
	//private String bookImage;
	
	@Min(value = 1000, message = "Publication Year should be a 4-digit number")
    @Max(value = 9999, message = "Publication Year should be a 4-digit number")
	private int publicationYear;
	
	private boolean availability;
	
	@NotNull(message = "Author Cannot be Null")
	private String bookAuthor;

	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Book(int bookId,
			@NotNull(message = "Book Name cannot be empty") @Size(min = 2, max = 100, message = "Book Name must be between 2 and 100 characters") String bookName,
			@Min(value = 1000, message = "Publication Year should be a 4-digit number") @Max(value = 9999, message = "Publication Year should be a 4-digit number") int publicationYear,
			boolean availability, @NotNull(message = "Author Cannot be Null") String bookAuthor) {
		super();
		this.bookId = bookId;
		this.bookName = bookName;
		this.publicationYear = publicationYear;
		this.availability = availability;
		this.bookAuthor = bookAuthor;
	}

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public int getPublicationYear() {
		return publicationYear;
	}

	public void setPublicationYear(int publicationYear) {
		this.publicationYear = publicationYear;
	}

	public boolean isAvailability() {
		return availability;
	}

	public void setAvailability(boolean availability) {
		this.availability = availability;
	}

	public String getBookAuthor() {
		return bookAuthor;
	}

	public void setBookAuthor(String bookAuthor) {
		this.bookAuthor = bookAuthor;
	}



	/*
	 * public Book(
	 * 
	 * @NotNull(message = "Book Id Should Not Be Null") @Min(value = 100, message =
	 * "Book Id Should be greater than 100") int bookId,
	 * 
	 * @NotNull(message = "Book Name cannot be empty") @Size(min = 2, max = 100,
	 * message = "Book Name must be between 2 and 100 characters") String bookName,
	 * 
	 * @NotNull(message = "Please select the image") MultipartFile image,
	 * 
	 * @Min(value = 1000, message =
	 * "Publication Year should be a 4-digit number") @Max(value = 9999, message =
	 * "Publication Year should be a 4-digit number") int publicationYear, boolean
	 * availability, @NotNull(message = "Author Cannot be Null") String author) {
	 * super(); this.bookId = bookId; this.bookName = bookName; this.image = image;
	 * this.publicationYear = publicationYear; this.availability = availability;
	 * this.author = author; }
	 */
	
	


	
}
