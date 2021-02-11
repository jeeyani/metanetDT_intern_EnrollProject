
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
	
	//
	//�����򰡸�� ��ȸ
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
		// �й�, �̹��⵵, �̹��б� �����ֱ�.
		Collection<GradeDTO> evaluationList = 
				gradeService.getEvalList((String)session.getAttribute("studentId"), Calendar.getInstance().get(Calendar.YEAR), semester);
		request.setAttribute("evaluationList", evaluationList);
		
		return "evaluationList";
	}
	
	//������ �� 
	@RequestMapping(value = "/evaluationDetail", method = RequestMethod.POST)
	public String evaluationDetail(HttpServletRequest request){ 
		// ���ǿ� registerNo set���ֱ�.
		
		
		return "evaluationDetail";
	}
	
	//������ �����ϱ�
	@RequestMapping(value = "/evaluationDetailAction", method = RequestMethod.POST)
	public String evaluationDetailAction(HttpServletRequest request){ 
		
		// ���ǿ� registerNo get���ֱ�.
		boolean result = gradeService.setEval((int)request.getAttribute("registerNo"), 1,2,3,4,5);
		if(!result)
			return "evaluationDetail";		
		return "evaluationList";
	}
	
	//�б⺰ ���� ��ȸ
	@RequestMapping(value = "/gradeSemester", method = RequestMethod.POST)
	public String gradeSemester(HttpServletRequest request){ 
		
		HttpSession session = request.getSession();
		Collection<GradeDTO> result = gradeService.getSemGradeList(
				(String)session.getAttribute("studentId"), (int)request.getAttribute("regYear"), (String)request.getAttribute("regSemester"));
		
		request.setAttribute("semesterGradeList", result);
		return "gradeSemester";
	}
	
	//��ü ���� ��ȸ
	@RequestMapping(value = "/gradeTotal", method = RequestMethod.POST)
	public String gradeTotal(HttpServletRequest request){ 
		
		
		return "gradeTotal";
	}
}
