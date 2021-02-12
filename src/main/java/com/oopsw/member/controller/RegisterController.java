package com.oopsw.member.controller;

import java.text.DateFormat;
import java.util.Collection;
import java.util.Date;
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

import com.oopsw.member.dto.StudentDTO;
import com.oopsw.member.dto.SubjectDTO;
import com.oopsw.member.service.MemberService;
import com.oopsw.member.service.RegisterService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class RegisterController {
	
	@Autowired
	private RegisterService registerService;
	
	@Autowired
	private MemberService memberService;
	
	private static final Logger logger = LoggerFactory.getLogger(RegisterController.class);
	
	
	//강의계획서페이지
	@RequestMapping(value = "/lecturePlan", method = RequestMethod.GET)
	public String lecturePlan(HttpSession session, Model model) {
		
		//이름가져오기
		String studentId =(String)session.getAttribute("studentId");
		StudentDTO studentList= memberService.getStudentInfo(studentId);
		model.addAttribute("studentList", studentList);
		
		//초기 보여지는 페이지는 조회되는 데이터가 없음
		model.addAttribute("lecturePlanList", null);
		
		
		return "lecturePlanList";
	}
	
	//강의계획서페이지조회버튼 클릭
	@RequestMapping(value = "/lecturePlanList", method = RequestMethod.GET)
	public String lecturePlanList(HttpServletRequest request,Model model) {
		
		logger.info("subjectName"+request.getParameter("subjectName"));
		logger.info("professorName"+request.getParameter("professorName"));
		logger.info("subjectId"+request.getParameter("subjectId"));
		
		if(request.getParameter("subjectName") != null){
			String subjectName = request.getParameter("subjectName");
			Collection<SubjectDTO> subjectList = registerService.getNameList(subjectName);
			model.addAttribute("subjectList", subjectList);
			
			return "lecturePlanList";
		}
		
		
		return "lecturePlanList";
	}
		
	
	//강의계획서 상세페이지
	@RequestMapping(value = "/lecturePlanDetail", method = RequestMethod.POST)
	public String lecturePlanDetail() {
		
		return "lecturePlanDetail";
	}
	
	//수강신청페이지
	@RequestMapping(value = "/enrollment", method = RequestMethod.GET)
	public String enrolment() {
		
		//학생정보 가져오기
		
		//수강신청 가능 목록 가져오기
				
		//수강신청한 목록 가져오기
		
		
		return "enrollment";
	}
	
	//수강신청하기
	@RequestMapping(value = "/enrolmentAdd", method = RequestMethod.POST)
	public String enrolmentAdd() {

		return "redirect:enrollment";
	}
	
	//수강신청취소하기
	@RequestMapping(value = "/enrolmentDelete", method = RequestMethod.POST)
	public String enrolmentDelete() {
				
		return "redirect:enrollment";
	}
	
	//시간표조회페이지가져오기
	@RequestMapping(value = "/timetable", method = RequestMethod.GET)
	public String timetable() {
				
		return "timetable";
	}
	
	
	
}
