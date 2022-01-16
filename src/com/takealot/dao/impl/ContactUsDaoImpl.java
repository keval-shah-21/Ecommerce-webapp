package com.takealot.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.takealot.bean.ContactUs;
import com.takealot.dao.ContactUsDao;

public class ContactUsDaoImpl implements ContactUsDao {

	@Override
	public int insertContactusMessage(Connection connection, ContactUs obj) throws Exception {
		// TODO Auto-generated method stub
		String query = "insert into contact_us_table(user_email_id,message,user_fname,user_lname,status) values(?,?,?,?,?)";
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			pstat.setString(1, obj.getUserEmailId());
			pstat.setString(2, obj.getMessage());
			pstat.setString(3, obj.getUserFname());
			pstat.setString(4, obj.getUserLname());
			pstat.setString(5, obj.getStatus());
			return pstat.executeUpdate();
		}
		
	}

	@Override
	public List<ContactUs> selectContactUsDetail(Connection connection) throws Exception {
		// TODO Auto-generated method stub
		List<ContactUs> contactusList = new ArrayList<ContactUs>();
		String query = "select * from contact_us_table where status=?";
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			pstat.setString(1, "pending");
			ResultSet rs = pstat.executeQuery();
			while(rs.next())
			{
				ContactUs obj = new ContactUs();
				obj.setCotactUsId(rs.getInt(1));
				obj.setUserEmailId(rs.getString(2));
				obj.setMessage(rs.getString(3));
				obj.setUserFname(rs.getString(4));
				obj.setUserLname(rs.getString(5));
				obj.setStatus(rs.getString(6));
				contactusList.add(obj);
			}
			rs.close();
			return contactusList;
		}
			
		
	}

	@Override
	public ContactUs selectParticularContactusDetail(Connection connection, int id) throws Exception {
		// TODO Auto-generated method stub
		String query = "select * from contact_us_table where contact_us_id=?";
		ContactUs obj = new ContactUs();
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			pstat.setInt(1, id);
			ResultSet rs = pstat.executeQuery();
			while(rs.next())
			{
				obj.setCotactUsId(rs.getInt(1));
				obj.setUserEmailId(rs.getString(2));
				obj.setMessage(rs.getString(3));
				obj.setUserFname(rs.getString(4));
				obj.setUserLname(rs.getString(5));
				obj.setStatus(rs.getString(6));
			}
			rs.close();
			return obj;
			
		}
		
	}

	@Override
	public int updateContactusStatus(Connection connection, int id) throws Exception {
		// TODO Auto-generated method stub
		String updateQuery = "update contact_us_table set status=? where contact_us_id= ? ";
		try(PreparedStatement pstat = connection.prepareStatement(updateQuery))
		{
			pstat.setString(1, "Replyed");
			pstat.setInt(2, id);
			return pstat.executeUpdate();
		}
		
	}

}
