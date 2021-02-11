package com.oopsw.member.controller;

import java.text.DateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.oopsw.member.service.MemberService;
import com.oopsw.member.dto.StudentDTO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private MemberService memberService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	//로그인페이지
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String login() {

		return "login";
	}
	
	//로그인 처리
	@RequestMapping(value = "/loginAction", method = RequestMethod.POST)
	public String loginAction(HttpServletRequest request,Model model,HttpSession session){
			
		String loginOK = memberService.login(request.getParameter("id"), request.getParameter("pw"));
		
		logger.info(loginOK);
			
		if(loginOK !=null){
			
			session.setAttribute("studentId", loginOK);
			String studentId =(String)session.getAttribute("studentId");
			StudentDTO studentList= memberService.getStudentInfo(studentId);
			model.addAttribute("studentList", studentList);

			return "studentInfo";
		}
		
		return "redirect:/login";
	}
	
	//로그아웃
	@RequestMapping(value = "/logoutAction", method = RequestMethod.GET)
	public String logoutAction(HttpSession session) {
		
		session.invalidate();
		return "login";
	}
	
	
	//학생정보페이지
	@RequestMapping(value = "/studentInfo", method = RequestMethod.GET)
	public String studentInfo(HttpSession session, Model model) {
		/*String studentId = (String)session.getAttribute("studentId");
		
		Collection<StudentDTO> studentList = memberService.getStudentInfo(studentId);
		model.addAttribute("studentList", studentList);
		*/
		return "studentInfo";
	}
 
	
}
