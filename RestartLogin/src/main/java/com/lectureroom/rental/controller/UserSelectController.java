package com.lectureroom.rental.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserSelectController {
	//肺弊贸府
		private Logger log = Logger.getLogger(this.getClass());
		
		@Resource(name="userService")
		private UserService memberService;
		
		@RequestMapping("/detail.do")
		public ModelAndView process(@RequestParam("id") String id) {
			
			if(log.isDebugEnabled()) {
				log.debug("id : " + id);
			}
			
			UserCommand user = UserService.getMember(id);
									//view捞抚		加己疙	加己蔼
			return new ModelAndView("selectDetail","user",user);
		}
}
