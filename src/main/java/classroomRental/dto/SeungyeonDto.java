package classroomRental.dto;

import java.util.Date;

public class SeungyeonDto
{
	int facilityCode; //시설코드
	String facilityName; //시설명
	int person; //인원
	String way; //방식
	Date dataInfo;
	
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
	public Date getDataInfo() {
		return dataInfo;
	}
	public void setDataInfo(Date dataInfo) {
		this.dataInfo = dataInfo;
	}
}
