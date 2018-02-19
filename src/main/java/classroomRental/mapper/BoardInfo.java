package classroomRental.mapper;

import java.util.List;

import classroomRental.dto.BoardDto;
import classroomRental.dto.Pagination;

public interface BoardInfo {
	public void insert(BoardDto boardDto);
	List<BoardDto> selectAll();
	List<BoardDto> selectPage(Pagination pagination);
	int selectCount();
	public void delete(String number);
	public void update(BoardDto boardDto);
	BoardDto select(BoardDto boardDto);
}
