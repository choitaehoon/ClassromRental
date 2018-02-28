package classroomRental.dto;

import java.util.Date;

public class DateDto 
{
	Date iddate;
	Date currentTime; 
	Date endTime;
	
	public Date getIddate() {
		return iddate;
	}
	public void setIddate(Date iddate) {
		this.iddate = iddate;
	}
	public Date getCurrentTime() {
		return currentTime;
	}
	public void setCurrentTime(Date currentTime) {
		this.currentTime = currentTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	
}
