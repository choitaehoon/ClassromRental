package classroomRental.service;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import classroomRental.dto.User;
import classroomRental.mapper.UserInfo;

@Service
public class UserService {
	@Autowired
	UserInfo userInfo;

	public String validateBeforeInsert(User user) {
		String s = user.getName();
		if (StringUtils.isBlank(s))
			return "이름을 입력하세요.";
		s = user.getEmail();
		if (StringUtils.isBlank(s))
			return "이메일 주소를 입력하세요.";
		s = user.getUserType();
		if (StringUtils.isBlank(s))
			return "사용자 유형을 선택하세요.";
		s = user.getLoginId();
		if (StringUtils.isBlank(s))
			return "로그인ID를 입력하세요.";
		s = user.getPassword();
		if(StringUtils.isBlank(s))
			return "비밀번호 입력하세요";
		User user2 = userInfo.selectByLoginId(s);
		if (user2 != null)
			return "로그인ID가 중복됩니다.";
		return null;
	}

	public String validateBeforeUpdate(User user) {
		String s = user.getName();
		if (StringUtils.isBlank(s))
			return "이름을 입력하세요.";
		s = user.getEmail();
		if (StringUtils.isBlank(s))
			return "이메일 주소를 입력하세요.";
		s = user.getUserType();
		if (StringUtils.isBlank(s))
			return "사용자 유형을 선택하세요.";
		s = user.getLoginId();
		if (StringUtils.isBlank(s))
			return "로그인ID를 입력하세요.";
		User user2 = userInfo.selectByLoginId(s);
		if (user2 != null && user.getId() != user2.getId())
			return "로그인ID가 중복됩니다.";
		return null;
	}
	
	//로그인 하기전에
	public String loginBefore(User user)
	{
		if(StringUtils.isBlank(user.getLoginId()))
			return "아이디를 입력하세요";
		if(StringUtils.isBlank(user.getPassword()))
			return "비밀번호를 입력하세요";
		if(userInfo.selectByPassword(user) == null)
			return "등록되지 않은 아이디이거나, 아이디 혹은 비밀번호를 잘못입력하셨습니다";
		return null;
	}
	
}
