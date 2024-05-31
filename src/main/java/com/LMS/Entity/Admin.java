package com.LMS.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Admin {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer adminid;
	private String username;
	private String password;
	private String email;
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Admin(String username, String password, String email) {
		super();
		this.username = username;
		this.password = password;
		this.email = email;
	}
	public Admin(Integer adminid, String username, String password, String email) {
		super();
		this.adminid = adminid;
		this.username = username;
		this.password = password;
		this.email = email;
	}
	public Integer getAdminid() {
		return adminid;
	}
	public void setAdminid(Integer adminid) {
		this.adminid = adminid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "Admin [adminid=" + adminid + ", username=" + username + ", password=" + password + ", email=" + email
				+ "]";
	}
	
	
}
