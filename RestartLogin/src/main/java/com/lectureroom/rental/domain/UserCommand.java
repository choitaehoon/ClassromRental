package com.lectureroom.rental.domain;

import java.sql.Date;

public class UserCommand {
	

	private String id;
	private String passwd;
	private String name;
	private Date reg_date;
	
	//비밀번호 일치 여부 체크
	public boolean isCheckedPasswd(String userPasswd) {
		if(passwd.equals(userPasswd)) {
			return true;
		}
		return false;
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

}
