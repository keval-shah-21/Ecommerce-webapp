package com.takealot.service.impl;

import java.sql.Connection;


import java.sql.DriverManager;
import java.util.List;

import com.takealot.bean.User;
//import com.takealot.bean.Customer;
import com.takealot.bean.ValidateUser;
import com.takealot.dao.UserDao;
import com.takealot.dao.impl.UserDaoImpl;
//import com.takealot.dao.CustomerDao;
//import com.takealot.dao.impl.CustomerDaoImpl;
//import com.takealot.service.CustomerService;
import com.takealot.service.UserService;

public class UserServiceImpl implements UserService {

	UserDao customerDao = new UserDaoImpl();
	
	public static Connection getConnection()
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		}
		catch(ClassNotFoundException e1)
		{
			e1.printStackTrace();
		}
		try
		{
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/takealot", "root", "admin");
			return con;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
		
	}
	public String saveCustomerDetails(User customer) {
		
		try(Connection con=getConnection())
		{
			int insert=customerDao.insertCustomerDetails(con,customer);
			if(insert>0)
			{
				return "Succesfull";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return null;
	}
	@Override
	public List<ValidateUser> fetchCustomerUnamePassword() {
		// TODO Auto-generated method stub
		
		try(Connection con=getConnection())
		{
			return customerDao.selectCustomerUnamePassword(con);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public List<User> fetchCustomerDetails() {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			return customerDao.selectCustomerDetails(connection);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public int removeCustomerDetail(int id) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			return customerDao.deleteCustomerDetail(connection,id);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return 0;
	}
	@Override
	public String checkOldPassword(String oldPassword,int userId) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			return customerDao.selectOldPassword(connection,oldPassword,userId);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public String editPassword(int userId,String newPassword) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int result= customerDao.updatePassword(connection,userId,newPassword);
			if(result!=0)
			{
				return "Password Changed... ";
			}
			else
			{
				return "Password Not Changed...";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public String checkUserEmail(String email) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			return customerDao.selectUserEmail(connection,email);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public String editUser(User user,int userId) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int result= customerDao.updateUser(connection,user,userId);
			if(result!=0)
			{
				return "User Updated...";
			}
			else
			{
				return "User Not Update...";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public String changeStatusToZero(int userId) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int result = customerDao.updateStatusToZero(connection,userId);
			if(result!=0)
			{
				return "Status Changed...";
			}
			else
			{
				return "Status Not Changed... ";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public User fetchUserDetails(int userId) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			return customerDao.selectParticularCustomerDetails(connection,userId);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public String editDeliveryBoy(User user) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int i = customerDao.updateDeliveryBoy(connection,user);
			if(i!=0)
			{
				return "Updated...";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

}
