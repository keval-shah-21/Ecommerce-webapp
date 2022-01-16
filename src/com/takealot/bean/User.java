package com.takealot.bean;

import java.io.InputStream;

public class User {
		
		private int customerId;
		
		private String fname;
		private String lname;
		private String email;
		private String password;
		private String contact;	
		private String address1;
		private String address2;
		private int status;
		private String role;
		@Override
		public String toString() {
			return "User [customerId=" + customerId + ", fname=" + fname + ", lname=" + lname + ", email=" + email
					+ ", password=" + password + ", contact=" + contact + ", address1=" + address1 + ", address2="
					+ address2 + ", status=" + status + ", role=" + role + ", salary=" + salary
					+ ", userProfilepicStream=" + userProfilepicStream + ", userProfilepicString="
					+ userProfilepicString + "]";
		}
		private int salary;
		private InputStream userProfilepicStream;
		private String userProfilepicString;
		public String getUserProfilepicString() {
			return userProfilepicString;
		}
		public void setUserProfilepicString(String userProfilepicString) {
			this.userProfilepicString = userProfilepicString;
		}
		public InputStream getUserProfilepicStream() {
			return userProfilepicStream;
		}
		public void setUserProfilepicStream(InputStream userProfilepicStream) {
			this.userProfilepicStream = userProfilepicStream;
		}
		public int getSalary() {
			return salary;
		}
		public void setSalary(int salary) {
			this.salary = salary;
		}
		public int getCustomerId() {
			return customerId;
		}
		public void setCustomerId(int customerId) {
			this.customerId = customerId;
		}
		public String getRole() {
			return role;
		}
		public void setRole(String role) {
			this.role = role;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		
		public String getFname() {
			return fname;
		}
		public void setFname(String fname) {
			this.fname = fname;
		}
		public String getLname() {
			return lname;
		}
		public void setLname(String lname) {
			this.lname = lname;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getContact() {
			return contact;
		}
		public void setContact(String contactNo) {
			this.contact = contactNo;
		}
		public String getAddress1() {
			return address1;
		}
		public void setAddress1(String address1) {
			this.address1 = address1;
		}
		public String getAddress2() {
			return address2;
		}
		public void setAddress2(String address2) {
			this.address2 = address2;
		}
		public int getStatus() {
			return status;
		}
		public void setStatus(int status) {
			this.status = status;
		}
}
