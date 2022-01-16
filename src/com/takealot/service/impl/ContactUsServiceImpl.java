package com.takealot.service.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.List;

import com.takealot.bean.ContactUs;
import com.takealot.dao.ContactUsDao;
import com.takealot.dao.impl.ContactUsDaoImpl;
import com.takealot.service.ContactUsService;

public class ContactUsServiceImpl implements ContactUsService {

	ContactUsDao contactusDao = new ContactUsDaoImpl();
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
	public String addContactusMessage(ContactUs obj) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int i = contactusDao.insertContactusMessage(connection,obj);
			if(i>0)
			{
				return "Contact us message inserted...";
			}
			else
			{
				return "Contact us message Not inserted...";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public List<ContactUs> fetchContactusDetail() {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			return contactusDao.selectContactUsDetail(connection);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public ContactUs fetchParticularContactusDetail(int id) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			return contactusDao.selectParticularContactusDetail(connection,id);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public String editContactusStatus(int id) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int i = contactusDao.updateContactusStatus(connection,id);
			if(i>0)
			{
				return "Contact Us Status upadted....";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

}
