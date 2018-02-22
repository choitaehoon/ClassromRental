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
			return "빌릴수 있습니다.";
		return "빌릴수 없습니다";
	}
}
