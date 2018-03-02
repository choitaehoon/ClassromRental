package classroomRental.dto;

public class DateDto 
{
	String idDate;
	String currentTime; 
	String endTime;
	
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
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	
	@Override
	public String toString()
	{
		return idDate+" "+currentTime+" "+endTime;
	}
}
