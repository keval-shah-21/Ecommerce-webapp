package com.takealot.bean;

public class ContactUs {

	private int cotactUsId;
	private String userEmailId;
	private String message;
	private String userFname;
	private String userLname;
	private String status;
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getCotactUsId() {
		return cotactUsId;
	}
	public void setCotactUsId(int cotactUsId) {
		this.cotactUsId = cotactUsId;
	}
	public String getUserEmailId() {
		return userEmailId;
	}
	public void setUserEmailId(String userEmailId) {
		this.userEmailId = userEmailId;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getUserFname() {
		return userFname;
	}
	public void setUserFname(String userFname) {
		this.userFname = userFname;
	}
	public String getUserLname() {
		return userLname;
	}
	public void setUserLname(String userLname) {
		this.userLname = userLname;
	}
}
