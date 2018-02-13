package com.lectureroom.rental.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes("user")
public class UserUpdateController {
private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="userService")
	private UserService userService;
	
	@RequestMapping(value="/update.do",method=RequestMethod.GET)
	public ModelAndView form(@RequestParam("id") String id) {
		
		UserCommand userCommand = userService.getUser(id);
		
		return new ModelAndView("updateForm","user",userCommand);
	}
	
	@RequestMapping(value="/update.do",method=RequestMethod.POST)
	public String submit(@ModelAttribute("user") UserCommand memberCommand, BindingResult result, SessionStatus status) {
		
		if(log.isDebugEnabled()){
			log.debug("userCommand : " + userCommand);
		}
		
		//유효성 체크
		new UserValidator().validate(userCommand, result);
		if(result.hasErrors()){
			return "updateForm";
		}
		
		userService.updateUser(userCommand);
		
		return "redirect:/list.do";
	}
}
