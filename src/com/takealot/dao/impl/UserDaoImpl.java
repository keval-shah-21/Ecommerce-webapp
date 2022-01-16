package com.takealot.dao.impl;

import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import com.takealot.bean.User;
//	import com.mysql.cj.protocol.Resultset;
//import com.takealot.bean.Customer;
import com.takealot.bean.ValidateUser;
//import com.takealot.dao.CustomerDao;
import com.takealot.dao.UserDao;

public class UserDaoImpl implements UserDao {
	
	

	@Override
	public int insertCustomerDetails(Connection con, User user) {
		String insertQuery="insert into user_table(user_fname,user_lname,user_email,user_password,user_contact,user_address1,user_status,user_role,user_salary) values(?,?,?,?,?,?,?,?,?)";
		try(PreparedStatement pstat=con.prepareStatement(insertQuery))
		{
			pstat.setString(1, user.getFname());
			pstat.setString(2, user.getLname());
			pstat.setString(3, user.getEmail());
			pstat.setString(4, user.getPassword());
			pstat.setString(5, user.getContact());
			pstat.setString(6,user.getAddress1());
			pstat.setInt(7, user.getStatus());
			pstat.setString(8,user.getRole());
			pstat.setInt(9,user.getSalary());
			int insert=pstat.executeUpdate();
			return insert;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public List<ValidateUser> selectCustomerUnamePassword(Connection con) {
		// TODO Auto-generated method stub
		List<ValidateUser> userlist=new ArrayList<ValidateUser>();
		String fetchQuery="select user_email,user_password from user_table";
		try(Statement stat=con.createStatement();
				ResultSet rs=stat.executeQuery(fetchQuery))
		{
			while(rs.next())
			{
				ValidateUser vuser=new ValidateUser();
				vuser.setUsername(rs.getString(1));
				vuser.setPassword(rs.getString(2));
				userlist.add(vuser);
			}
			return userlist;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<User> selectCustomerDetails(Connection connection)throws Exception {
		// TODO Auto-generated method stub
		List<User> customerList = new ArrayList<User>();
		try(Statement stat = connection.createStatement();
				ResultSet rs = stat.executeQuery("select * from user_table where user_status!=-1");)
		
		{
			while(rs.next())
			{
				User user = new User();
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
				customerList.add(user);
			
			}
			return customerList;
		}
		
	}

	@Override
	public int deleteCustomerDetail(Connection connection, int id) throws Exception {
		// TODO Auto-generated method stub
		String deleteQuery = "update user_table set user_status=? where user_id = ?";
		try(PreparedStatement pstat = connection.prepareStatement(deleteQuery))
		{
			pstat.setInt(1, -1);
			pstat.setInt(2, id);
			return pstat.executeUpdate();
		}
		
	}

	@Override
	public String selectOldPassword(Connection connection, String oldPassword,int userId)throws Exception {
		// TODO Auto-generated method stub
		String query = "select user_password from user_table";
		String msg = "invalid";
		try(Statement stat = connection.createStatement();
				ResultSet rs = stat.executeQuery(query))
		{
			while(rs.next())
			{
				if(rs.getString(1).equals(oldPassword))
				{
					msg = "valid";
					break;
					
				}
			}
		}
		return msg;
	}

	@Override
	public int updatePassword(Connection connection, int userId,String newPassword) throws Exception {
		// TODO Auto-generated method stub
		String changePasswordQuery = "update user_table set user_password = ? where user_id =?";
		try(PreparedStatement pstat = connection.prepareStatement(changePasswordQuery))
		{
			pstat.setString(1, newPassword);
			pstat.setInt(2,userId);
			return pstat.executeUpdate();
		}

	}

	@Override
	public String selectUserEmail(Connection connection, String email) throws Exception {
		// TODO Auto-generated method stub
		try(Statement stat = connection.createStatement();
				ResultSet rs = stat.executeQuery("select user_email,user_password from user_table"))
		{
			while(rs.next())
			{
				if(rs.getString(1).equals(email))
				{
					return rs.getString(2);
				}
			}
		}
		return "Invalid";
	}

	@Override
	public int updateUser(Connection connection, User user,int userId) throws Exception {
		// TODO Auto-generated method stub
		String updateQuery = "update user_table set user_fname=?, user_lname=? ,user_contact=? ,user_address1=?, user_address2=?,user_profile_image=? where user_id=? ";
		int ans=0;
		try(PreparedStatement pstat = connection.prepareStatement(updateQuery))
		{
			pstat.setString(1, user.getFname());
			pstat.setString(2, user.getLname());
			pstat.setString(3, user.getContact());
			pstat.setString(4, user.getAddress1());
			pstat.setString(5, user.getAddress2());
			pstat.setBlob(6, user.getUserProfilepicStream());
			pstat.setInt(7, userId);
			ans =pstat.executeUpdate();
			
		}
		return ans;
	}

	@Override
	public int updateStatusToZero(Connection connection, int userId)throws Exception {
		// TODO Auto-generated method stub
		String updateStatusQuery = "update user_table set user_status=? where user_id =?";
		try(PreparedStatement pstat = connection.prepareStatement(updateStatusQuery))
		{
			pstat.setInt(1, 0);
			pstat.setInt(2, userId);
			return pstat.executeUpdate();
		}
		
	}

	@Override
	public User selectParticularCustomerDetails(Connection connection, int userId) throws Exception {
		// TODO Auto-generated method stub
		String query = "select * from user_table where user_id =?";
		User user = new User();
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{	
			pstat.setInt(1, userId);
			ResultSet rs = pstat.executeQuery();
			while(rs.next())
			{
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
			return user;
		}
		
	}

	@Override
	public int updateDeliveryBoy(Connection connection, User user) throws Exception {
		// TODO Auto-generated method stub
		String updateQuery = "update user_table set user_fname=?, user_lname=? ,user_email=?,user_password=?,user_contact=? ,user_address1=?,user_role=?,user_status=?,user_salary=? where user_id=?";
		try(PreparedStatement pstat = connection.prepareStatement(updateQuery))
		{
			pstat.setString(1, user.getFname());
			pstat.setString(2, user.getLname());
			pstat.setString(3, user.getEmail());
			pstat.setString(4, user.getPassword());
			pstat.setString(5, user.getContact());
			pstat.setString(6, user.getAddress1());
			pstat.setString(7, user.getRole());
			pstat.setInt(8, user.getStatus());
			pstat.setInt(9, user.getSalary());
			pstat.setInt(10, user.getCustomerId());
			
			return pstat.executeUpdate();
		}
		
	}

}