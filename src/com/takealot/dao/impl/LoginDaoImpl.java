package com.takealot.dao.impl;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Base64;

//import com.takealot.bean.Customer;
import com.takealot.bean.User;
import com.takealot.dao.LoginDao;

public class LoginDaoImpl implements LoginDao {

	@Override
	public User getUser(String userName, String password, Connection connection) {
		//String loginquery = "select * from user_table where user_email = ? and user_password = ? and user_status=?";
		
		User user = null;
	
		try(Statement stat = connection.createStatement();
				ResultSet rs = stat.executeQuery("select * from user_table"))

		{
			/*pstat.setString(1, userName);
			pstat.setString(2,password);
			pstat.setInt(3, 1);
			ResultSet rs = pstat.executeQuery();*/
			while(rs.next())
			{
				
				if(rs.getString(4).equals(userName)&&rs.getString(5).equals(password))
				{
					user = new User();
					user.setCustomerId(rs.getInt(1));
					user.setFname(rs.getString(2));
					user.setLname(rs.getString(3));
					user.setEmail(rs.getString(4));
					user.setPassword(rs.getString(5));
					user.setContact(rs.getString(6));
					user.setAddress1(rs.getString(7));
					user.setAddress2(rs.getString(8));
					byte[] imageData = rs.getBytes(9);
					if(null!=imageData && imageData.length>0)
					{
						String imageString = Base64.getEncoder().encodeToString(imageData);
						user.setUserProfilepicString(imageString);
					}
					user.setStatus(rs.getInt(10));
					user.setRole(rs.getString(11));
					user.setSalary(rs.getInt(12));
				}
				
					
			}
			
			//rs.close();
			System.out.println(user);
			return user;
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public int updateStatus(Connection connection,String userName, String password) {
		// TODO Auto-generated method stub
		String query = "update user_table set user_status=? where user_email=? and user_password=?";
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			pstat.setInt(1,1);
			pstat.setString(2, userName);
			pstat.setString(3, password);
			return pstat.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return 0;
	}

}
