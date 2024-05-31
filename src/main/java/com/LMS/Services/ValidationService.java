package com.LMS.Services;

import com.LMS.Entity.Validation;

public interface ValidationService {


	// use for the done user validation for login ....
	//public int userValidation(Validation v);
		public boolean userValidation(String userName , String Password);
		public boolean isValidLogin(String userName, String password);
}
