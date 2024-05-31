package com.LMS.Controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.LMS.Entity.Admin;
import com.LMS.Services.AdminService;
import com.LMS.Services.ValidationService;

import jakarta.servlet.http.HttpSession;
import com.LMS.Entity.Validation;

@Controller
public class AdminController {
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	ValidationService validationService;
	
	@RequestMapping("/")
	public String HomePage() {
		return "home";
	}
	
	@RequestMapping("/ContactUs")
	public String ContactPage() {
		return "ContactUs";
	}
	
	@RequestMapping("/aboutUs")
	public String AboutPage() {
		return "AboutUs";
	}
	
	@RequestMapping("/adminRegistration")
	public String AdminRegister(Model model) {
		return "adminRegistration";
	}


	@RequestMapping("/userRegistration")
	public String MemberRegister(Model model) {
		return "userRegistration";
	}
	
	// Admin Registration======================
	@PostMapping("/createAccount")
	public String adminRegistration(@RequestParam("userName") String uname, @RequestParam("password") String pass,
			@RequestParam("email") String email, ModelMap modelMap) {
		Admin a = new Admin();
		a.setUsername(uname);
		a.setPassword(pass);
		a.setEmail(email);
		int count = adminService.saveOrUpdateAdmin(a);
		if (count > 0) {
			modelMap.put("rmsg", "your account is succefully created");
			return "AdminLogin";
		} else {
			modelMap.put("msg", "Sorry somthing is wrong pls try agian");
			return "AdminRegistration";
		}
	}
	
	// =======Admin login validation
		
		 @GetMapping("/adminLoginValidation")
		    public String adminLoginValidation(@RequestParam String userName, @RequestParam String password, Model model) {
		        if (validationService.isValidLogin(userName, password)) {
		            model.addAttribute("successMessage", "Login successful!");
		            return "adminHome";  // Redirect to the admin dashboard or another secure page
		        } else {
		            model.addAttribute("customError", "Invalid username or password.");
		            return "AdminLogin";  // Return to the login page
		        }
		    }
	
	@RequestMapping("/userLogin")
	public String MemberLogin(Model model) {
		return "UserLogin";
	}
	@RequestMapping("/adminLogin")
	public String AdminLogin(Model model) {
		return "AdminLogin";
	}
	
	@RequestMapping("/adminLogout")
	public String AdminLogout() {
		return "home";
	}


}
