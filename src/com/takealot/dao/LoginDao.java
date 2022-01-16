package com.takealot.dao;

import java.sql.Connection;


//import com.takealot.bean.Customer;
import com.takealot.bean.User;

public interface LoginDao {
	

	User getUser(String userName, String password, Connection connection);

	int updateStatus(Connection connection, String userName, String password);

}
