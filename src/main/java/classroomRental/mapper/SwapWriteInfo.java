package classroomRental.mapper;

import java.util.List;

import classroomRental.dto.SwapWriteDto;

public interface SwapWriteInfo 
{
	void insertSwapWrite(SwapWriteDto swapDto);
	List<SwapWriteDto> selectByAll();
	SwapWriteDto selectByNumber(int number);
	void updateSwapWrite(SwapWriteDto swapDto);
	List<SwapWriteDto> ListAll(String loginId);
	SwapWriteDto selectByBorrower(SwapWriteDto swapDto);
}
