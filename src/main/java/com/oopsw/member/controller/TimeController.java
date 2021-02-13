package com.oopsw.member.controller;

import java.util.Calendar;
import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.oopsw.member.dto.GradeDTO;
import com.oopsw.member.dto.SubjectDTO;
import com.oopsw.member.service.TimetableService;

@Controller
public class TimeController {
	
	
	@Autowired
	private TimetableService timetableService;
	
	//시간표조회페이지가져오기
	@RequestMapping(value = "/timetable")
	public String timetable(HttpServletRequest request, Model model) {
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
		
		String studentId = session.getAttribute("studentId").toString();
		System.out.println(studentId);
		
		// 이방식이 옳다.
		//Collection<SubjectDTO> semesterGradeList = timetableService.getTimeTable(
		//	session.getAttribute("studentId"), Calendar.getInstance().get(Calendar.YEAR), semester);
		
		// 임시로 2020년 2학기 정보 출력.
		Collection<SubjectDTO> semesterGradeList = timetableService.getTimeTable(studentId, 2020, "2");
		System.out.println(semesterGradeList);
		
		model.addAttribute("semesterGradeList", semesterGradeList);
		return "timetable";
	}
		
}
