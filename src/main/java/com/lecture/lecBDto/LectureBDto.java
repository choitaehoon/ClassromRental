package com.lecture.lecBDto;

public class LectureBDto
{
	int studentId; //학번
	String password; //비밀번호
	int sNumber; //신청전화번호
	String rentalList; //대여인원목록
	String reasonForRental; //대여사유
	String possessionStatus; //나의소유상황
	
	public LectureBDto()
	{
		
	}
	
	public LectureBDto(int studentId, String password, int sNumber, String rentalList, String reasonForRental,
			String possessionStatus) {
		this.studentId = studentId;
		this.password = password;
		this.sNumber = sNumber;
		this.rentalList = rentalList;
		this.reasonForRental = reasonForRental;
		this.possessionStatus = possessionStatus;
	}

	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getsNumber() {
		return sNumber;
	}

	public void setsNumber(int sNumber) {
		this.sNumber = sNumber;
	}

	public String getRentalList() {
		return rentalList;
	}

	public void setRentalList(String rentalList) {
		this.rentalList = rentalList;
	}

	public String getReasonForRental() {
		return reasonForRental;
	}

	public void setReasonForRental(String reasonForRental) {
		this.reasonForRental = reasonForRental;
	}

	public String getPossessionStatus() {
		return possessionStatus;
	}

	public void setPossessionStatus(String possessionStatus) {
		this.possessionStatus = possessionStatus;
	}
	
	
}

