package com.oopsw.member.controller;

import java.util.Calendar;
import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.oopsw.member.dto.GradeDTO;
import com.oopsw.member.dto.RegisterDTO;
import com.oopsw.member.dto.StudentDTO;
import com.oopsw.member.service.GradeService;
import com.oopsw.member.service.MemberService;

@Controller
public class GradeController {

	@Autowired
	private GradeService gradeService;
	@Autowired
	private MemberService memberService;
	
	
	private static final Logger logger = LoggerFactory.getLogger(GradeController.class);

	
	//�����򰡸�� ��ȸ
	@RequestMapping(value = "/evaluationList")
	public String evaluationList(HttpServletRequest request, Model model){
		
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
		
		
		/*Collection<GradeDTO> evaluationList = 
				gradeService.getEvalList((String)session.getAttribute("studentId"), Calendar.getInstance().get(Calendar.YEAR), semester);*/
		Collection<GradeDTO> evaluationList = 
				gradeService.getEvalList((String)session.getAttribute("studentId"), 2020, "1");
		StudentDTO studentInfo = memberService.getStudentInfo((String)session.getAttribute("studentId"));
		
		model.addAttribute("evaluationList", evaluationList);
		model.addAttribute("studentInfo", studentInfo);
		
		return "evaluationList";
	}
	
	@RequestMapping(value = "/evaluationDetail", method = RequestMethod.POST)
	public String evaluationDetail(HttpServletRequest request, Model model){
		System.out.println(request.getAttribute("registerNo"));
		GradeDTO registerInfo = gradeService.getRegisterInfo(Integer.parseInt((String)request.getAttribute("registerNo")));
		model.addAttribute("subjectInfo", registerInfo);
		
		return "evaluationDetail";
	}
	
	@RequestMapping(value = "/evaluationDetailAction", method = RequestMethod.POST)
	public String evaluationDetailAction(HttpServletRequest request){ 
		
		boolean result = gradeService.setEval(Integer.parseInt(request.getParameter("registerNo")), 1,2,3,4,5);
		if(!result)
			return "evaluationDetail";		
		return "evaluationList";
	}
	
	//�б⺰ ���� UI
	@RequestMapping(value = "/gradeSemester")
	public String gradeSemester(HttpServletRequest request, Model model){ 
		
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
		
		Collection<GradeDTO> result = gradeService.getSemGradeList(
				(String)session.getAttribute("studentId"), Calendar.getInstance().get(Calendar.YEAR), semester);
		
		model.addAttribute("semesterGradeList", result);
		return "gradeSemester";
	}
	
	
	//�б⺰ ���� Ŭ��(��ȸ)
	@RequestMapping(value = "/gradeSemesterAction", method = RequestMethod.POST)
	public String gradeSemesterAction(HttpServletRequest request, Model model){ 
		
		HttpSession session = request.getSession();
		String regYear = request.getParameter("regYear");
		String regSemester = request.getParameter("regSemester");
		
		Collection<GradeDTO> result = gradeService.getSemGradeList(
				(String)session.getAttribute("studentId"), Integer.parseInt(regYear), regSemester);		
		
		model.addAttribute("semesterGradeList", result);
		model.addAttribute("regYear", regYear);
		model.addAttribute("regSemester", regSemester);
		return "gradeSemester";
	}
		
	//��ü ���� ��ȸ
	@RequestMapping(value = "/gradeTotal")
	public String gradeTotal(HttpServletRequest request, Model model){ 

		HttpSession session = request.getSession();
		
		StudentDTO student = memberService.getStudentInfo((String)session.getAttribute("studentId"));
		Collection<GradeDTO> result = gradeService.gradeTotal((String)session.getAttribute("studentId"));
		Collection<RegisterDTO> yearSemesterList = gradeService.getYearSemesterList((String)session.getAttribute("studentId"));
				
		model.addAttribute("studentInfo", student);
		model.addAttribute("allGradeList", result);
		model.addAttribute("yearSemesterList", yearSemesterList);
		
		return "gradeTotal";
	}
	
}
