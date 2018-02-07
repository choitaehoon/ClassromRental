package classroomRental.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import classroomRental.dto.BoardDto;
import classroomRental.dto.SurveyDto;
import classroomRental.mapper.BoardInfo;
import classroomRental.mapper.SurveyInfo;

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
	
	
	@RequestMapping(value="list", method=RequestMethod.GET)
	public String test3(Model model)
	{
		model.addAttribute("board",boardInfo.selectAll());
		return "view/list";
	}
	
	@RequestMapping(value="list", method=RequestMethod.POST)
	public String test3(BoardDto board,Model model)
	{
		boardInfo.update(board);
		return "redirect:list";
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
	
	@RequestMapping("update")
	public String update(BoardDto board,Model model)
	{
		model.addAttribute("board", boardInfo.select(board));
	    return "view/edit";
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
