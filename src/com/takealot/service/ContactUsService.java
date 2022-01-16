package com.takealot.service;

import java.util.List;

import com.takealot.bean.ContactUs;

public interface ContactUsService {

	String addContactusMessage(ContactUs obj);

	List<ContactUs> fetchContactusDetail();

	ContactUs fetchParticularContactusDetail(int id);

	String editContactusStatus(int id);

}
