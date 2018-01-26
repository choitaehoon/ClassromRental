package com.classroomrental.login;

import java.io.PrintWriter;
import java.util.Locale;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

	@Autowired
	LoginDAO loginDAO;

	//localhost:8080을 입력하였을 때 index.jsp호출
	@RequestMapping(value="/")
	public ModelAndView indexView(ModelAndView mv) {
		String page = "index";
		mv.setViewName(page);

		return mv;
	}

	@RequestMapping(value="/login/loginCheck")
	public void loginCheck(Locale locale, Model model, LoginInfo lofinInfo, HttpSession session, HttpServletResponse response) throws IOEception{
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		if((loginInfo.getId() !=null && !loginInfo.getId().equals("") && loginInfo.getPassword() != null && !loginInfo.getPassword().equals(""))) {

			if(loginDAO.loginCheck(loginInfo)) {
				session.setAttribute("login", 0); //로그인 성공시 세션


				session.setAttribute("id", loginInfo.getId());

				out.println("<script>location.href='/';</script>");
				out.flush();
				out.close();
			}
			if(loginDAO.loginCheck(loginInfo) == false) {
				out.println("<script>alert('로그인 정보를 확인하세요!'); history.go(-1); </script>");
				out.flush();
				out.close();
			}
		}
	}
}
