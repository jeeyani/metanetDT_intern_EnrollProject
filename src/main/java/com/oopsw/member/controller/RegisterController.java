package com.oopsw.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
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
		
		/*//초기 보여지는 페이지는 조회되는 데이터가 없음
		model.addAttribute("lecturePlanList", null);
		
		*/
		
		//전체 강의계획서 목록 가져오기
		Collection<SubjectDTO> subjectList = registerService.getAllPlan();
		model.addAttribute("subjectList", subjectList);
				
		return "lecturePlanList";
	}
	
	//강의계획서페이지조회버튼 클릭
	@RequestMapping(value = "/lecturePlanList", method = RequestMethod.POST)
	public String lecturePlanList(HttpServletRequest request,Model model,SubjectDTO search) {
		
		search.setRadioItem(request.getParameter("radioItem"));
		search.setSearch(request.getParameter("searchTest"));


		Collection<SubjectDTO> subjectList = registerService.getSelectPlanList(search);
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
		
		SubjectDTO subjectDetail = registerService.getPlanDetail(subjectNo);
		model.addAttribute("subjectDetail", subjectDetail);
		
		return "lecturePlanDetail";
	}

	//수강신청페이지
	@RequestMapping(value = "/enrollment", method = RequestMethod.GET)
	public String enrolment(HttpSession session, Model model, RegisterDTO register, RegisterDTO registerOK) {
		
		//1.학생정보 가져오기
		String studentId = (String)session.getAttribute("studentId");
		StudentDTO studentList = memberService.getStudentInfo(studentId);
		model.addAttribute("studentList", studentList);
		
		
		//2.수강신청 가능 목록 가져오기
		
		//올해가 몇학기 인지 계산
		int month = Calendar.getInstance().get(Calendar.MONTH)+1;

		switch(month){
		case 1:case 2:
			register.setRegSemester("1");
			registerOK.setRegSemester("1");
			break;
		case 7: case 8:
			register.setRegSemester("2");
			registerOK.setRegSemester("2");
			break;
		case 3:case 4:case 5:case 6:
			register.setRegSemester("s");
			registerOK.setRegSemester("s");
			break;
		case 9:case 10:case 11:case 12:
			register.setRegSemester("f");
			registerOK.setRegSemester("f");
			break;
		default:
			register.setRegSemester("error");
			break;
		}
		
		model.addAttribute("semester", register.getRegSemester());
		
		//작년 평가점수를 가져오기 위한 작년년도 구하기
		int year = Calendar.getInstance().get(Calendar.YEAR);
		register.setRegYear(year-1);
		
		register.setStudentId(Integer.parseInt(studentId));
		Collection<RegisterDTO> registerList = registerService.getSubjectList(register);
		model.addAttribute("registerList",registerList);
		
		
		//3.수강신청한 목록 가져오기
		registerOK.setRegYear(year);
		
		registerOK.setStudentId(Integer.parseInt(studentId));
		Collection<RegisterDTO> registerOKList = registerService.getRegisterList(registerOK);
		model.addAttribute("registerOKList",registerOKList);
		
		return "enrollment";
	}
	
	//수강신청 조회하기
	@RequestMapping(value="/enrollmenAction", method=RequestMethod.POST)
	public String enrollmenAction(HttpServletRequest request, Model model, HttpSession session){
		RegisterDTO register = new RegisterDTO();
		String studentId = session.getAttribute("studentId").toString();
		register.setStudentId(Integer.parseInt(studentId));
		// 조건에 따른 조회 ...
		// subjectNo		학수번호
		// subjectGroup		이수구분
		// subjName			과목명
		
		if(request.getParameter("subjectNo") != null && request.getParameter("subjectNo") != ""){
			int subjectNo = Integer.parseInt(request.getParameter("subjectNo"));
			register.setSubjectNo(subjectNo);
			System.out.println(subjectNo);
		}
		
		String subjGroup = request.getParameter("subjGroup");
		if(subjGroup != null && subjGroup != "") {
			if(!subjGroup.equals("none")){
				register.setSubjGroup(subjGroup);
				System.out.println(subjGroup);
			}
		}
		
		String subjName = request.getParameter("subjName");
		if(subjName != null && subjName != ""){
			register.setSubjName(subjName);
			System.out.println(subjName);
		}
		
		//올해가 몇학기 인지 계산
		int month = Calendar.getInstance().get(Calendar.MONTH)+1;
		
		switch(month){
		case 1:case 2:
			register.setRegSemester("1");
			break;
		case 7: case 8:
			register.setRegSemester("2");
			break;
		case 3:case 4:case 5:case 6:
			register.setRegSemester("s");
			break;
		case 9:case 10:case 11:case 12:
			register.setRegSemester("f");
			break;
		default:
			register.setRegSemester("error");
			break;
		}
		
		
		int year = Calendar.getInstance().get(Calendar.YEAR-1);
		register.setRegYear(year);
		
		Collection<RegisterDTO> registerList = registerService.getSelectList(register);
		model.addAttribute("registerList", registerList);

		return "enrollmentSelect";
	}
	
	//수강신청하기
	@RequestMapping(value = "/enrolmentAdd", method = RequestMethod.GET)
	public String enrolmentAdd(@RequestParam("subjectNo")int subjectNo,Model model,RegisterDTO register,RegisterDTO registerOK,HttpSession session,HttpServletResponse response) throws IOException {
		
		//올해가 몇학기 인지 계산
		int month = Calendar.getInstance().get(Calendar.MONTH)+1;

		switch(month){
		case 1:case 2:
			register.setRegSemester("1");
			break;
		case 7: case 8:
			register.setRegSemester("2");
			break;
		case 3:case 4:case 5:case 6:
			register.setRegSemester("s");
			break;
		case 9:case 10:case 11:case 12:
			register.setRegSemester("f");
			break;
		default:
			register.setRegSemester("error");
			break;
		}
		
		//올해 수강신청 학년도
		int year = Calendar.getInstance().get(Calendar.YEAR);
		register.setRegYear(year);
		
		register.setSubjectNo(subjectNo);
		
		int studentId = Integer.parseInt((String)session.getAttribute("studentId"));
		register.setStudentId(studentId);
		
		
		
		//3.수강신청한 목록 가져오기
		registerOK.setRegYear(year);
		
		//int studentId2 = Integer.parseInt((String)session.getAttribute("studentId"));
		registerOK.setStudentId(studentId);
		Collection<RegisterDTO> registerOKList = registerService.getRegisterList(registerOK);
		model.addAttribute("registerOKList",registerOKList);
		
		int sum =0;
		for(RegisterDTO item:registerOKList){
			sum+=item.getSubjScore();
		}
		
		logger.info("수강신청한 목록 학점 총 수 : ================="+sum);
		
		//**해당 과목 수강신청하기
		
		//최대한 학점 수 초과시 신청 불가 **(최대학점 수 변경해야함!!!)
		if(sum >=9){
			
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("result", "fail1");
			String json = jsonObject.toString();
			
			PrintWriter out = response.getWriter();
			response.setContentType("application/json;charset=utf-8");
			out.println(json);
			out.flush();
			out.close();
			
			return "enrollment";
		}
		
		/*************         과목 신청할때 시간 겹치는지 확인합니다...           *****************/
		// 1. 신청 클릭한 과목 정보를 가져온다
		SubjectDTO subjectDTO = registerService.getSubject(register);
		
		// 2. 내가 2021년 1학기 201500123 학번 학생의 수강신청 정보를 가져온다.
		Collection<SubjectDTO> subjectlist = registerService.getSubjList(studentId, Calendar.getInstance().get(Calendar.YEAR), "1");
		
		for (SubjectDTO subject : subjectlist) {
			
			// 3-1. 신청클릭학 과목 날짜와 비교한다.
			if(subjectDTO.getLectDate().equals(subject.getLectDate()))
			{
				System.out.println("검사: 날짜가 동일합니다.");
				
				int chkLectStart = subjectDTO.getLectStart();
				int chkLectEnd = subjectDTO.getLectEnd();
				
				// 3-2. 신청클릭한 과목 시간을 비교한다.     신청과목.시작시간 <= 기존과목.시작시간   && 신청과목.끝시간 <= 기존과목.시작시간   ||   신청과목.시작시간 > 기존과목.끝시간
				if( !( (chkLectStart < subject.getLectStart() && chkLectEnd < subject.getLectStart()) || (chkLectStart > subject.getLectEnd() && chkLectEnd > subject.getLectEnd()) ) )
				{
					System.out.println("검사: 시간이 겹칩니다 !!!");

					JSONObject jsonObject = new JSONObject();
					jsonObject.put("result", "fail2");
					String json = jsonObject.toString();
					
					PrintWriter out = response.getWriter();
					response.setContentType("application/json;charset=utf-8");
					out.println(json);
					out.flush();
					out.close();
					
					return "enrollment";				
				}	
			}
		}
		
		int registerSuccess = registerService.setRegister(register);
		return "redirect:enrollment";
	}
	
	//수강신청취소하기
	@RequestMapping(value = "/enrolmentDelete", method = RequestMethod.GET)
	public String enrolmentDelete(@RequestParam("subjectNo")int subjectNo,Model model,HttpSession session) {
		RegisterDTO register = new RegisterDTO();
		
		//올해가 몇학기 인지 계산
		int month = Calendar.getInstance().get(Calendar.MONTH)+1;

		switch(month){
		case 1:case 2:
			register.setRegSemester("1");
			break;
		case 7: case 8:
			register.setRegSemester("2");
			break;
		case 3:case 4:case 5:case 6:
			register.setRegSemester("s");
			break;
		case 9:case 10:case 11:case 12:
			register.setRegSemester("f");
			break;
		default:
			register.setRegSemester("error");
			break;
		}
		
		//올해 수강신청 학년도
		int year = Calendar.getInstance().get(Calendar.YEAR);
		register.setRegYear(year);		
		
		//삭제할 과목 학수번호
		register.setSubjectNo(subjectNo);
		
		int studentId =Integer.parseInt((String)session.getAttribute("studentId"));
		register.setStudentId(studentId);
		
		int delectSubject = registerService.deleteRegister(register);
		
		return "redirect:enrollment";
	}
	
	//시간표조회페이지가져오기
	@RequestMapping(value = "/timetable")
	public String timetable(HttpServletRequest request, Model model, HttpSession session) {
		
		//이름가져오기
		String studentId =(String)session.getAttribute("studentId");
		StudentDTO studentList= memberService.getStudentInfo(studentId);
		model.addAttribute("studentList", studentList);
		
		session = request.getSession();
		
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
		
		
		// 이방식이 옳다.
		//Collection<SubjectDTO> semesterGradeList = timetableService.getTimeTable(
		//	session.getAttribute("studentId"), Calendar.getInstance().get(Calendar.YEAR), semester);
		
		// 임시로 2020년 2학기 정보 출력.
		Collection<SubjectDTO> courseList = registerService.getTimeTable(studentId, 2021, "1");
		
		model.addAttribute("courseList", courseList);

		return "timetable";
	}
	
	
}
