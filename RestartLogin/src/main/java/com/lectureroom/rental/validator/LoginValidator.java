package com.lectureroom.rental.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;

public class LoginValidator {
	@Override
	public boolean supports(Class<?> clazz) {
		return UserCommand.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "id", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "passwd", "required");
	}
}
