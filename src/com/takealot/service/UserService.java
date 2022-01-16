package com.takealot.service;

import java.util.List;


//import com.takealot.bean.Customer;
import com.takealot.bean.User;
import com.takealot.bean.ValidateUser;

public interface UserService {

	String saveCustomerDetails(User customer);

	List<ValidateUser> fetchCustomerUnamePassword();

	List<User> fetchCustomerDetails();

	int removeCustomerDetail(int id);

	String checkOldPassword(String oldPassword, int userId);

	String editPassword(int userId, String newPassword);

	String checkUserEmail(String email);

	String editUser(User user, int userId);

	String changeStatusToZero(int userId);

	User fetchUserDetails(int userId);

	String editDeliveryBoy(User user);

}
