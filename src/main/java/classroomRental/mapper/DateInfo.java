package classroomRental.mapper;

import java.text.SimpleDateFormat;

public interface DateInfo 
{
	int selectByCurrentTime(SimpleDateFormat currentTime);
}
