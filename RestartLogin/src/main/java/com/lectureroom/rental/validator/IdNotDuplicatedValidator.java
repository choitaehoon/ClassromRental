package com.lectureroom.rental.validator;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

//�Ϲ� Ŭ������ Component
@Component
public class IdNotDuplicatedValidator implements Validator{

	@Resource(name="userService")
	private UserService userService;
	
	@Override
	public boolean supports(Class<?> clazz) {
		return UserCommand.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		UserCommand userCommand = (UserCommand)target;
		
		//���̵� �ߺ� üũ
		if(userCommand.getId() != null && !userCommand.getId().trim().isEmpty()) {
			UserCommand member = userService.getMember(userCommand.getId());
			
			if(user != null && user.getId().equals(userCommand.getId())){
				//���̵� �ߺ�
				errors.rejectValue("id", "duplicatedId");
			}
		}
		
	}
}
