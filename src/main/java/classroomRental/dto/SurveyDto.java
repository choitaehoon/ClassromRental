package classroomRental.dto;

public class SurveyDto 
{
	private String question1; //답변1
	private String question2; //답변2
	private String question3; //답변3
	private String question4; //답변4
	private String question5; //답변5
	private String loginId; //작성자 아이디
	private String facilityCode;
	private String idDate;
	private String currentTime;
	private int confirm;
	private String borrower;
	private String endTime;
	
	public String getQuestion1() {
		return question1;
	}
	public void setQuestion1(String question1) {
		this.question1 = question1;
	}
	public String getQuestion2() {
		return question2;
	}
	public void setQuestion2(String question2) {
		this.question2 = question2;
	}
	public String getQuestion3() {
		return question3;
	}
	public void setQuestion3(String question3) {
		this.question3 = question3;
	}
	public String getQuestion4() {
		return question4;
	}
	public void setQuestion4(String question4) {
		this.question4 = question4;
	}
	public String getQuestion5() {
		return question5;
	}
	public void setQuestion5(String question5) {
		this.question5 = question5;
	}
	public String getLoginId() {
		return loginId;
	}
	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}
	public String getFacilityCode() {
		return facilityCode;
	}
	public void setFacilityCode(String facilityCode) {
		this.facilityCode = facilityCode;
	}
	public String getIdDate() {
		return idDate;
	}
	public void setIdDate(String idDate) {
		this.idDate = idDate;
	}
	public String getCurrentTime() {
		return currentTime;
	}
	public void setCurrentTime(String currentTime) {
		this.currentTime = currentTime;
	}
	public int getConfirm() {
		return confirm;
	}
	public void setConfirm(int confirm) {
		this.confirm = confirm;
	}
	public String getBorrower() {
		return borrower;
	}
	public void setBorrower(String borrower) {
		this.borrower = borrower;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	
}
