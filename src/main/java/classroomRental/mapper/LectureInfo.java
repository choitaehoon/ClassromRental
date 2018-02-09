package classroomRental.mapper;

import java.util.List;

import classroomRental.dto.SeungyeonDto;

//강의실 정보
public interface LectureInfo {
	List<SeungyeonDto> selectAll();
//	SeungyeonDto select(int facilityCode);
}
