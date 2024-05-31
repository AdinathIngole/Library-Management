package com.LMS.Services;

import java.util.List;

import com.LMS.Entity.Admin;


public interface AdminService {
	Integer saveOrUpdateAdmin(Admin admin);

	List<Admin> getAll();

	List<Admin> getAdminsByUserName(String userName);

}
