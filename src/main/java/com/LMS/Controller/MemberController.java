package com.LMS.Controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.LMS.Entity.Member;
import com.LMS.Services.MemberService;
import com.LMS.Services.ValidationService;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	ValidationService validationService;
	@RequestMapping("/userHeader")
	public String UserHeaderPage() {
		return "userHeader";
	}

	@RequestMapping("/userHome")
	public String UserHomePage() {
		return "userHome";
	}
	
	@RequestMapping("/adminContact")
	public String adminContactPage() {
		return "adminContact";
	}
	
	
	//Handeller For Getting All User List In Admin Dashboard
    @RequestMapping("/memberList")
	public String memberLists( ModelMap map) {
		map.addAttribute("userList", memberService.getAllMembers());
		return "memberList";
	}
    
    //Handeller For Adding Member in Library Member list by Admin side
  	@RequestMapping("/createMember")
  	public String addMember( ModelMap map ,@Valid Member member,BindingResult bindingResult){
  	    
  		
  		if (bindingResult.hasErrors()) {
  			System.out.println("binding Error" +bindingResult);
  	        return "userRegistration";
  	    }

  		System.out.println(member);
  	    boolean isSuccess = this.memberService.addMember(member);

  	    if (!isSuccess) {
  	        map.addAttribute("customError", "Member Id Already Exist");
  	        System.out.println("Custom Error");
  	        return "userRegistration";
  	    }

  	    return "UserLogin";
  	}
  	
 // ==========do user validation and maintain session..
	
 		 @GetMapping("/userLoginValidation")
 		    public String doUserLoginValidation(@RequestParam String username, @RequestParam String password,HttpSession session, Model model) {
 		        if (validationService.userValidation(username, password)) {
 		        	session.setAttribute("cuname", username);
 		            model.addAttribute("successMessage", "Login successful!");
 		            return "userHome";  // Redirect to the admin dashboard or another secure page
 		        } else {
 		            model.addAttribute("customError", "Invalid username or password.");
 		            return "UserLogin";  // Return to the login page
 		        }
 		    }
 	
 		 
 // ========================show user profile=====================
 	@RequestMapping("/getUserProfile")
 	public ModelAndView getUserProfile(HttpSession session) {
 		ModelAndView mv = new ModelAndView();
 		String uname = (String) session.getAttribute("cuname");
 		List<Member> list = memberService.getMemberByUserName(uname);
 		mv.addObject("list", list);
 		mv.setViewName("UserProfile");
 		return mv;
 	}
 	
  
  	@RequestMapping("/UserLogout")
	public String UserLogout() {
		return "UserLogin";
	}
	
}
