package com.lecture.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lecture.survey.SurveyDto;
import com.lecture.survey.SurveyInfo;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("view")
public class LectureroomController {
	
	@Autowired
	SurveyInfo surveyInfo;
	
	@RequestMapping(value="/questionnaireInfo")
	public String test()
	{
		return "view/questionnaireInfo";
	}
	
	@RequestMapping("classroomInfo")
	public String test1(SurveyDto survey,Model model)
	{
		surveyInfo.insert(survey);
		return "view/classroomInfo";
	}
	
	@RequestMapping("signUpAfter")
	public String test2()
	{
		return "view/signUpAfter";
	}
}
