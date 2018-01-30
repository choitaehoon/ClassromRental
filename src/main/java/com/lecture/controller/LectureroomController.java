package com.lecture.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class LectureroomController {
	
	private static final Logger logger = LoggerFactory.getLogger(LectureroomController.class);
	
	@RequestMapping(value = "/signUp", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The clie.nt locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "signUp";
	}
	
	@RequestMapping("/questionnaireInfo")
	public String test()
	{
		return "questionnaireInfo";
	}
	
	@RequestMapping("/classroomInfo")
	public String test1()
	{
		return "classroomInfo";
	}
	
	@RequestMapping("/seungyeon")
	public String test2()
	{
		return "seungyeon";
	}
}
