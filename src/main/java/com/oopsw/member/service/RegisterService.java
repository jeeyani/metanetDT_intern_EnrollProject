package com.oopsw.member.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oopsw.member.dao.RegisterDAO;
import com.oopsw.member.dto.RegisterDTO;
import com.oopsw.member.dto.SubjectDTO;

@Service
public class RegisterService {
	
	@Autowired
	private RegisterDAO registerDAO;
	
	public Collection<SubjectDTO> getSelectPlanList(SubjectDTO search) {
		
		return registerDAO.getSelectPlanList(search);
	}

	public SubjectDTO getPlanDetail(int subjectNo) {
		
		return registerDAO.getPlanDetail(subjectNo);
	}
	
	public Collection<RegisterDTO> getSubjectList(RegisterDTO register) {
		
		return registerDAO.getSubjectList(register);
	}

	public Collection<RegisterDTO> getRegisterList(RegisterDTO register) {
		
		return registerDAO.getRegisterList(register);
	}


	public int setRegister(RegisterDTO register) {
		// TODO Auto-generated method stub
		return registerDAO.setRegister(register);
	}

	public int deleteRegister(RegisterDTO register) {
		
		return registerDAO.deleteRegister(register);
	}

	public Collection<RegisterDTO> getSelectList(RegisterDTO register) {
		return registerDAO.getSelectList(register);
	}

/*	@Autowired
	private TimetableDAO timetableDAO;*/
	
	public Collection<SubjectDTO> getTimeTable(String studentId, int regYear, String regSemester){
		return registerDAO.getTimeTable(studentId, regYear, regSemester);
	}

}
