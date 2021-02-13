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
import com.oopsw.member.service.PlanService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class PlanController {
	
	@Autowired
	private PlanService planService;
	
	@Autowired
	private MemberService memberService;
	
	
	private static final Logger logger = LoggerFactory.getLogger(PlanController.class);
	
	
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
	@RequestMapping(value = "/lecturePlanList", method = RequestMethod.POST)
	public String lecturePlanList(HttpServletRequest request,Model model,SubjectDTO search) {
		
		search.setRadioItem(request.getParameter("radioItem"));
		search.setSearch(request.getParameter("searchTest"));


		Collection<SubjectDTO> subjectList = planService.getSelectPlanList(search);
		model.addAttribute("subjectList", subjectList);
		
		return "lectureSelectPlanList";

	}
		
	
	//강의계획서 상세페이지
	@RequestMapping(value = "/lecturePlanDetail", method = RequestMethod.GET)
	public String lecturePlanDetail(@RequestParam("subjectNo")int subjectNo,Model model,HttpSession session) {
		
		//이름가져오기
		String studentId =(String)session.getAttribute("studentId");
		StudentDTO studentList= memberService.getStudentInfo(studentId);
		model.addAttribute("studentList", studentList);
		
		SubjectDTO subjectDetail = planService.getPlanDetail(subjectNo);
		model.addAttribute("subjectDetail", subjectDetail);
		
		return "lecturePlanDetail";
	}
	
	
}
