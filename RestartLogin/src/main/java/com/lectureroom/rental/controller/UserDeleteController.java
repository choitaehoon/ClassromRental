package com.lectureroom.rental.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserDeleteController {
	@Resource(name="userService")
	private UserService userService;
	
	@RequestMapping("/delete.do")
	public String form() {
		return "deleteForm";
	}
	
	@RequestMapping("/deletePro.do")
	public String process(@RequestParam("id") String id) {
		
		userService.deleteMember(id);
		
		return "redirect:/list.do";
	}
}
