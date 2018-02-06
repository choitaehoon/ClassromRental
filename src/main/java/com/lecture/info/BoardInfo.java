package com.lecture.info;

import java.util.List;

public interface BoardInfo {
	public void insert(BoardDto boardDto);
	List<BoardDto> selectAll();
	public void delete(String number);
}
