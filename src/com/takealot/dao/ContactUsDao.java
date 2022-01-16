package com.takealot.dao;

import java.sql.Connection;
import java.util.List;

import com.takealot.bean.ContactUs;

public interface ContactUsDao {

	int insertContactusMessage(Connection connection, ContactUs obj)throws Exception;

	List<ContactUs> selectContactUsDetail(Connection connection)throws Exception;

	ContactUs selectParticularContactusDetail(Connection connection, int id)throws Exception;

	int updateContactusStatus(Connection connection, int id)throws Exception;

}
