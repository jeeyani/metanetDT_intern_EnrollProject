package com.oopsw.member.controller;

import java.util.Calendar;
import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.oopsw.member.dto.GradeDTO;
import com.oopsw.member.service.GradeService;

@Controller
public class GradeController {

	@Autowired
	private GradeService gradeService;
	
	private static final Logger logger = LoggerFactory.getLogger(GradeController.class);
	
	
	//강의평가목록 조회
	@RequestMapping(value = "/evaluationList", method = RequestMethod.POST)
	public String evaluationList(HttpServletRequest request){
		HttpSession session = request.getSession();
		int month = Calendar.getInstance().get(Calendar.MONTH)+1;
		String semester = "";
		switch(month){
		case 1:case 2:
			semester = "f";
		case 7: case 8:
			semester = "s";
		case 3:case 4:case 5:case 6:
			semester = "1";
		case 9:case 10:case 11:case 12:
			semester = "2";
		default:
			semester = "error";
		}
		// 학번, 이번년도, 이번학기 보내주기.
		Collection<GradeDTO> evaluationList = 
				gradeService.getEvalList((String)session.getAttribute("studentId"), Calendar.getInstance().get(Calendar.YEAR), semester);
		request.setAttribute("evaluationList", evaluationList);
		
		return "evaluationList";
	}
	
	//강의평가 상세 
	@RequestMapping(value = "/evaluationDetail", method = RequestMethod.POST)
	public String evaluationDetail(HttpServletRequest request){ 
		// 세션에 registerNo set해주기.
		
		
		return "evaluationDetail";
	}
	
	//강의평가 제출하기
	@RequestMapping(value = "/evaluationDetailAction", method = RequestMethod.POST)
	public String evaluationDetailAction(HttpServletRequest request){ 
		
		// 세션에 registerNo set해주기.
		boolean result = gradeService.setEval(40000, 1,2,3,4,5);
		if(!result)
			return "evaluationDetail";		
		return "evaluationList";
	}
	
	//학기별 성적 조회
	@RequestMapping(value = "/gradeSemester", method = RequestMethod.POST)
	public String gradeSemester(HttpServletRequest request){ 
		// 세션에 registerNo set해주기.
		
		
		return "gradeSemester";
	}
	
	//전체 성적 조회
	@RequestMapping(value = "/gradeTotal", method = RequestMethod.POST)
	public String gradeTotal(HttpServletRequest request){ 
		// 세션에 registerNo set해주기.
		
		
		return "gradeTotal";
	}
}
