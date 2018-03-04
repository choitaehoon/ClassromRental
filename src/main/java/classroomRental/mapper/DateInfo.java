package classroomRental.mapper;

import java.util.List;

import classroomRental.dto.DateDto;

public interface DateInfo 
{
	int selectByCurrentTime(DateDto dateDto);
	List<String> selectByIdDate(DateDto dateDto);
	void selectByInsert(DateDto dateDto);
}
