package classroomRental.dto;

public class SeungyeonDto
{
	int facilityCode; //시설코드
	String facilityName; //시설명
	int person; //인원
	String way; //방식
	int dataInfo; //누가 빌렸는지 안빌렸는지확인   안빌렸다면 0  빌렸다면 1 
	
	public int getFacilityCode() {
		return facilityCode;
	}
	public void setFacilityCode(int facilityCode) {
		this.facilityCode = facilityCode;
	}
	public String getFacilityName() {
		return facilityName;
	}
	public void setFacilityName(String facilityName) {
		this.facilityName = facilityName;
	}
	public int getPerson() {
		return person;
	}
	public void setPerson(int person) {
		this.person = person;
	}
	public String getWay() {
		return way;
	}
	public void setWay(String way) {
		this.way = way;
	}
	public int getDataInfo() {
		return dataInfo;
	}
	public void setDataInfo(int dataInfo) {
		this.dataInfo = dataInfo;
	}
}
