package com.lecture.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lecture.info.BoardDto;
import com.lecture.info.BoardInfo;
import com.lecture.info.SurveyDto;
import com.lecture.info.SurveyInfo;

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
	
	@RequestMapping(value="signUpAfter")
	public String test2()
	{
		return "view/signUpAfter";
	}
	
	
	@RequestMapping("list")
	public String test3(Model model)
	{
		model.addAttribute("board",boardInfo.selectAll());
		return "view/list";
	}
	
	@RequestMapping("writeForm")
	public String test4()
	{
		return "view/writeForm";
	}
	
	@RequestMapping("write")
	public String test5(BoardDto board)
	{
		//쓰고 목록으로 넘어가기
		boardInfo.insert(board);
		return "redirect:list";
	}
	
	@RequestMapping("delete")
	public String delete(HttpServletRequest request)
	{
		boardInfo.delete(request.getParameter("id"));
		return "redirect:list";
	}
	
	@RequestMapping("transmit")
	public String test6(SurveyDto survey)
	{
		//설문지작성하고 맨 처음화면으로 가기
		surveyInfo.insert(survey);
		return "redirect:signUpAfter";
	}
}
