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

import com.oopsw.member.service.MemberService;
import com.oopsw.member.service.RegisterService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class RegisterController {
	
	@Autowired
	private RegisterService registerService;
	
	private static final Logger logger = LoggerFactory.getLogger(RegisterController.class);
	
	
	//강의계획서목록조회 페이지
	@RequestMapping(value = "/lecturePlan", method = RequestMethod.GET)
	public String lecturePlan() {
		
		
		
		return "lecturePlanList";
	}
	
	//강의계획서상세내용조회 페이지
	@RequestMapping(value = "/lecturePlanDetail", method = RequestMethod.GET)
	public String lecturePlanDetail() {
		
		return "lecturePlanDetail";
	}
	
	//수강신청페이지
	@RequestMapping(value = "/enrolment", method = RequestMethod.GET)
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
	
	
	
}
