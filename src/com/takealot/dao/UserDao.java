package com.takealot.dao;

import java.sql.Connection;

import java.util.List;

import com.takealot.bean.User;
//import com.takealot.bean.Customer;
import com.takealot.bean.ValidateUser;

public interface UserDao {

	int insertCustomerDetails(Connection con, User user);

	List<ValidateUser> selectCustomerUnamePassword(Connection con);

	List<User> selectCustomerDetails(Connection connection) throws Exception;

	int deleteCustomerDetail(Connection connection, int id)throws Exception;

	String selectOldPassword(Connection connection, String oldPassword, int userId)throws Exception;

	int updatePassword(Connection connection, int userId, String newPassword)throws Exception;

	String selectUserEmail(Connection connection, String email)throws Exception;

	int updateUser(Connection connection, User user, int userId)throws Exception;

	int updateStatusToZero(Connection connection, int userId)throws Exception;

	User selectParticularCustomerDetails(Connection connection, int userId)throws Exception;

	int updateDeliveryBoy(Connection connection, User user)throws Exception;

}
