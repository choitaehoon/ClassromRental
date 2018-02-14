package classroomRental.mapper;

import java.util.List;

import classroomRental.dto.SeungyeonDto;

//강의실 정보
public interface SeungyeonInfo 
{
	List<SeungyeonDto> selectAll();
	SeungyeonDto selectByFacilityCode(int facilityCode);
}
