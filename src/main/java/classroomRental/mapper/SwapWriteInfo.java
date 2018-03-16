package classroomRental.mapper;

import java.util.List;

import classroomRental.dto.SwapWriteDto;

public interface SwapWriteInfo 
{
	void insertSwapWrite(SwapWriteDto swapDto);
	List<SwapWriteDto> selectByAll();
}
