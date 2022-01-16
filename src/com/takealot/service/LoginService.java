package com.takealot.service;

//import com.takealot.bean.Customer;
import com.takealot.bean.User;

public interface LoginService {

	User validateUser(String userName, String password);

	int changeStatus(String userName, String password);
	
}
