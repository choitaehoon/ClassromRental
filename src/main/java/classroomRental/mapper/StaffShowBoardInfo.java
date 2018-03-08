package classroomRental.mapper;

import java.util.List;

import classroomRental.dto.Pagination;
import classroomRental.dto.StaffShowBoardDto;

public interface StaffShowBoardInfo 
{
	public void insert2(StaffShowBoardDto staffboardDto);
	   List<StaffShowBoardDto> selectAll2();
	   List<StaffShowBoardDto> selectPage2(Pagination pagination);
	   int selectCount2();
	   public void delete2(int bronumber);
	   public void update2(StaffShowBoardDto staffboardDto);
	   StaffShowBoardDto select2(StaffShowBoardDto staffboardDto);
}
