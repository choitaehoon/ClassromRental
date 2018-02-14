package classroomRental.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import classroomRental.dto.SeungyeonDto;
import classroomRental.mapper.SeungyeonInfo;

@Service
public class SeungyeonInfoService 
{
	@Autowired SeungyeonInfo seungyeonInfo;
	
	public String dataSeungyeon(SeungyeonDto seungyeonDto)
	{
		if(seungyeonInfo.selectByFacilityCode(seungyeonDto.getFacilityCode()) == null)
		{
			System.out.println("들어오나 확인 0");
			return "정보가 없습니다.";	
		}
		return "";
	}
}
