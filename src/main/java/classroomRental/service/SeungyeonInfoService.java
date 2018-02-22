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
		if(seungyeonDto.getDataInfo() == 0) //안빌린상태
			return "빌릴 수 있습니다.";
		return null;	
	}

}
