package com.lectureroom.rental.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lectureroom.rental.validator.IdNotDuplicatedValidator;

@Controller
@RequestMapping("insert.do")
public class UserInsertController {

	   private Logger log = Logger.getLogger(this.getClass());

	   @Resource(name="userService")
	   private UserService userService;

	   @Autowired
	   private IdNotDuplicatedValidator idNodDuplicatedValidator;
	   
	   //커맨드 객체(자바빈) 초기화
	   @ModelAttribute("user")   //@ModelAttribute해야 request에 저장
	   public UserCommand initCommand(){
	      return new UserCommand();
	   }
	   
	   @RequestMapping(value="/insert.do", method=RequestMethod.GET)
	   public String form(){
	      return "insertForm";
	   }
	   
	   @RequestMapping(method=RequestMethod.POST)
	   public String submit(@ModelAttribute("user") UserCommand userCommand, BindingResult result) {
		   
		   if(log.isDebugEnabled()) {
			   log.debug("userCommand : " + userCommand);
		   }
		   
		   //id,passwd,name 전송 체크
		   new UserValidator().validate(userCommand, result);
		   
		   //id 중복 체크
		   idNodDuplicatedValidator.validate(userCommand, result);
		   if(result.hasErrors()) {
			   return form();
		   }
		   
		   userService.insertUser(userCommand);
		   
		   return "redirect:/list.do";
	   }
}
