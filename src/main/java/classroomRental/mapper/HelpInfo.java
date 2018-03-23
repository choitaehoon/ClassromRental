package classroomRental.mapper;

import java.util.List;

import classroomRental.dto.Help;

public interface HelpInfo 
{
	void insert(Help help);
	List<Help> selectAll();
}
