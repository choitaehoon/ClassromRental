package classroomRental.mapper;

import java.util.List;

import classroomRental.dto.SurveyDto;

public interface SurveyInfo
{
	public void insert(SurveyDto surveyDto);
	List<SurveyDto> selectByConfirm();
	void updateNice(SurveyDto surveyDto);
	void updateWarning(SurveyDto surveyDto);
	void updateDemotion(SurveyDto surveyDto);
}
