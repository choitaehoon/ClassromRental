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
	
	//�α�ó��
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="UserService")
	private UserService UserService;
	
	//Ŀ�ǵ尴ü(�ڹٺ�) �ʱ�ȭ
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
		
		//��ȿ�� üũ
		new LoginValidator().validate(userCommand, result);
		if(result.hasErrors()) {
			return form();
		}
		
		//�α��� üũ
		try {
			//���������� �α��� �� ���, member->db���� ������ id
			UserCommand user = userService.getMember(userCommand.getId());
			
			boolean check = false;
			
			if(user!=null) {
											//����ڰ� �Է��� passwd�� db�� passwd ��
				check = user.isCheckedPasswd(userCommand.getPasswd());
			}
			if(check) {
				//���� ����
				//�α��� ó��(���ǿ� id �ֱ�..?)
				session.setAttribute("userId", userCommand.getId());
				return "redirect:/list.do";
			}else {
				//���� ����
				throw new Exception();
			}
			
		}catch(Exception e) {
			//���������� �ȵǸ� loginForm.jsp�� ������
			//���� ���з� �� ȣ��
			result.reject("invalidIdOrPassword");
			return form();
		}
		
	}
	
}