package com.LMS.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.LMS.Entity.Admin;
import com.LMS.Repository.AdminRepository;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminRepository adminRepo;
	@Override
	public Integer saveOrUpdateAdmin(Admin admin) {
		Admin admin2 = adminRepo.save(admin);
		return admin2.getAdminid();
	}

	@Override
	public List<Admin> getAll() {

		return adminRepo.findAll();
	}

	@Override
	public List<Admin> getAdminsByUserName(String userName) {
		List<Admin> adminlist=adminRepo.findByUsername(userName);
		if(adminlist !=null) {
			return adminlist;
		}
		return null;
	}

}
