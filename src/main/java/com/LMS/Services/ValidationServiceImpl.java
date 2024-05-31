package com.LMS.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.LMS.Entity.Admin;
import com.LMS.Entity.Member;
import com.LMS.Entity.Validation;
import com.LMS.Repository.AdminRepository;
import com.LMS.Repository.MemberRepository;

@Service
public class ValidationServiceImpl implements ValidationService {
	
	@Autowired
	AdminRepository adminRepo;
	@Autowired
	MemberRepository memberRepo;

	/*
	 * @Override public int userValidation(Validation v) { List<Member> members =
	 * memberRepo.findByUsernameAndPassword(v.getUsername(), v.getPassword());
	 * return members.size() > 0 ? 1 : 0; }
	 */
	
	@Override
	public boolean userValidation(String userName , String password) {
	
		List <Member> members = memberRepo.findByUsernameAndPassword(userName, password);
		return !members.isEmpty();
	}

	// This method should actually check against a database or another secure storage
    public boolean isValidLogin(String userName, String password) {
        // Hardcoded for demonstration purposes
    	List<Admin> admins = adminRepo.findByUsernameAndPassword(userName, password);
    	System.out.println(admins);
    	return !admins.isEmpty();
    	//return "admins".equals(userName) && "admins".equals(password);
    }

}
