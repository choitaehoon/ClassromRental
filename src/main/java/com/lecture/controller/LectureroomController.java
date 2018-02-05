package com.lecture.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lecture.board.BoardInfo;
import com.lecture.survey.SurveyDto;
import com.lecture.survey.SurveyInfo;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("view")
public class LectureroomController {
	
	@Autowired private SurveyInfo surveyInfo;
	@Autowired private BoardInfo boardInfo;
	
	@RequestMapping("/questionnaireInfo")
	public String test()
	{
		return "view/questionnaireInfo";
	}
	
	@RequestMapping("classroomInfo")
	public String test1()
	{
		return "view/classroomInfo";
	}
	
	@RequestMapping("signUpAfter")
	public String test2()
	{
		return "view/signUpAfter";
	}
	
	
	@RequestMapping("list")
	public String test3()
	{
		return "view/list";
	}
	
	@RequestMapping("writeForm")
	public String test4()
	{
		return "view/writeForm";
	}
	
	@RequestMapping("write")
	public String test5(HttpServletRequest request,Model model)
	{
		//쓰고 목록으로 넘어가기
		boardInfo.insert(request.getParameter("id"), request.getParameter("context"));
		return "redirect:list";
	}
	
	@RequestMapping("transmit")
	public String test6(SurveyDto survey,Model model)
	{
		//설문지작성하고 맨 처음화면으로 가기
		surveyInfo.insert(survey);
		return "redirect:signUpAfter";
	}
}
