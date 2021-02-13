package com.oopsw.member.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.oopsw.member.dto.RegisterDTO;
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
	public String lecturePlanList(HttpServletRequest request,Model model,SubjectDTO search) {
		
		logger.info("searchNAME:   "+search.getSearch());

		String subjectName = request.getParameter("subjectName");
		Collection<SubjectDTO> subjectList = registerService.getNameList(subjectName);
		model.addAttribute("subjectList", subjectList);
		
		return "lectureNamePlanList";

		
		
	/*	return "lecturePlanList";*/
	}
		
	
	//강의계획서 상세페이지
	@RequestMapping(value = "/lecturePlanDetail", method = RequestMethod.GET)
	public String lecturePlanDetail(@RequestParam("subjectNo")int subjectNo,Model model) {
		
		SubjectDTO subjectDetail = registerService.getPlanDetail(subjectNo);
		model.addAttribute("subjectDetail", subjectDetail);
		
		return "lecturePlanDetail";
	}
	
	//수강신청페이지
	@RequestMapping(value = "/enrollment", method = RequestMethod.GET)
	public String enrolment(HttpSession session, Model model,RegisterDTO register, RegisterDTO registerOK) {
		
		//1.학생정보 가져오기
		String studentId = (String)session.getAttribute("studentId");
		
		StudentDTO studentList = memberService.getStudentInfo(studentId);
		model.addAttribute("studentList", studentList);
		
		
		//2.수강신청 가능 목록 가져오기
		
		//올해가 몇학기 인지 계산
		Calendar cal = Calendar.getInstance();
		
		SimpleDateFormat sdf = new SimpleDateFormat("MM");
		String month = sdf.format(cal.getTime());
		if(month.equals("01")||month.equals("02")){
			register.setRegSemester("1");
		} else if(month.equals("05")||month.equals("06")){
			register.setRegSemester("s");
		}else if(month.equals("07")||month.equals("08")){
			register.setRegSemester("2");
		}else if(month.equals("11")||month.equals("12")){
			register.setRegSemester("f");
		}else{
			register.setRegSemester("");
		}
		
		//작년 평가점수를 가져오기 위한 작년년도 구하기
		int year = cal.get(Calendar.YEAR);
		register.setRegYear(year-1);
		

		Collection<RegisterDTO> registerList = registerService.getSubjectList(register);
		model.addAttribute("registerList",registerList);
		
		
		//3.수강신청한 목록 가져오기
		register.setRegYear(year);
		Collection<RegisterDTO> registerOKList = registerService.getRegisterList(register);
		model.addAttribute("registerOKList",registerOKList);
		
		return "enrollment";
	}
	
	//수강신청하기
	@RequestMapping(value = "/enrolmentAdd", method = RequestMethod.GET)
	public String enrolmentAdd(@RequestParam("subjectNo")int subjectNo,Model model,RegisterDTO register,HttpSession session) {
		
		//올해가 몇학기 인지 계산
		Calendar cal = Calendar.getInstance();
		
		SimpleDateFormat sdf = new SimpleDateFormat("MM");
		String month = sdf.format(cal.getTime());
		if(month.equals("01")||month.equals("02")){
			register.setRegSemester("1");
		} else if(month.equals("05")||month.equals("06")){
			register.setRegSemester("s");
		}else if(month.equals("07")||month.equals("08")){
			register.setRegSemester("2");
		}else if(month.equals("11")||month.equals("12")){
			register.setRegSemester("f");
		}else{
			register.setRegSemester("");
		}
		
		//올해 수강신청 학년도
		int year = cal.get(Calendar.YEAR);
		register.setRegYear(year);
		
		register.setSubjectNo(subjectNo);
		
		int studentId =Integer.parseInt((String)session.getAttribute("studentId"));
		register.setStudentId(studentId);
		
		
		//해당 과목 수강신청하기
		int registerSuccess = registerService.setRegister(register);
		
		
		return "redirect:enrollment";
	}
	
	//수강신청취소하기
	@RequestMapping(value = "/enrolmentDelete", method = RequestMethod.POST)
	public String enrolmentDelete() {
				
		return "redirect:enrollment";
	}
	
	
	
	
}
