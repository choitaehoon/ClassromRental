package com.lectureroom.rental.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/login.do")
public class LoginController {
	
	//로그처리
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="UserService")
	private UserService UserService;
	
	//커맨드객체(자바빈) 초기화
	@ModelAttribute("user")
	public UserCommand initCommand() {
		return new UserCommand();
	}
	
	@RequestMapping(method=RequestMethod.GET)
	public String form() {
		return "loginForm";
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public String submit(@ModelAttribute("user") UserCommand userCommand, BindingResult result, HttpSession session) {
		
		if(log.isDebugEnabled()){
			log.debug("memberCommand : " + userCommand);
		}
		
		//유효성 체크
		new LoginValidator().validate(userCommand, result);
		if(result.hasErrors()) {
			return form();
		}
		
		//로그인 체크
		try {
			//정상적으로 로그인 될 경우, member->db에서 가져온 id
			UserCommand user = userService.getMember(userCommand.getId());
			
			boolean check = false;
			
			if(user!=null) {
											//사용자가 입력한 passwd와 db의 passwd 비교
				check = user.isCheckedPasswd(userCommand.getPasswd());
			}
			if(check) {
				//인증 성공
				//로그인 처리(세션에 id 넣기..?)
				session.setAttribute("userId", userCommand.getId());
				return "redirect:/list.do";
			}else {
				//인증 실패
				throw new Exception();
			}
			
		}catch(Exception e) {
			//정상적으로 안되면 loginForm.jsp로 보내기
			//인증 실패로 폼 호출
			result.reject("invalidIdOrPassword");
			return form();
		}
		
	}
	
}