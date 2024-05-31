package com.LMS.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.validation.constraints.NotBlank;

@Entity
public class Member {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int memberId;
	
	private String firstName;

	private String lastName;
	
	@NotBlank(message = "Email Should not be Empty")
	private String email;
	
	private String contactNumber;
	
	private String username;
	
	@NotBlank(message = "Password Should not be Empty")
	private String password;
	
	private String gender;
	

	public Member(int memberId, String firstName, String lastName, String email, String contactNumber,String username,String password,String gender) {
		super();
		this.memberId = memberId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.contactNumber = contactNumber;
		this.password = password;
		this.gender = gender;
	}

	public Member(String firstName, String lastName,String email,
			String contactNumber, String username,String password,
			String gender) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.contactNumber = contactNumber;
		this.username = username;
		this.password = password;
		this.gender = gender;
	}

	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	@Override
	public String toString() {
		return "Member [memberId=" + memberId + ", firstName=" + firstName + ", lastName=" + lastName + ", email="
				+ email + ", contactNumber=" + contactNumber + ", userName="+ username+", password = " + password + ", Gender =" + gender + "]";
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}


	
	
	/*
	 * @OneToMany(mappedBy = "member")
	 * 
	 * @JsonIgnore
	 * 
	 * @Transient
	 */
	//private List<Checkout> checkout;

	
}
