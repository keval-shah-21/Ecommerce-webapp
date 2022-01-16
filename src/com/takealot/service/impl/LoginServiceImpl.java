package com.takealot.service.impl;

import java.sql.Connection;

import java.sql.DriverManager;

//import com.takealot.bean.Customer;
import com.takealot.bean.User;
import com.takealot.dao.LoginDao;
import com.takealot.dao.impl.LoginDaoImpl;
import com.takealot.service.LoginService;

public class LoginServiceImpl implements LoginService {
	
	LoginDao logindao = new LoginDaoImpl();
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
	@Override
	public User validateUser(String userName, String password) {
		try(Connection connection = getConnection())
		{
		
			return logindao.getUser(userName,password,connection);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public int changeStatus(String userName, String password) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			return logindao.updateStatus(connection,userName,password);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return 0;
	}

}
