package classroomRental.mapper;

import java.util.List;

import classroomRental.dto.BoardDto;

public interface BoardInfo {
	public void insert(BoardDto boardDto);
	List<BoardDto> selectAll();
	public void delete(String number);
	public void update(BoardDto boardDto);
}
