package com.oopsw.member.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oopsw.member.dao.GradeDAO;
import com.oopsw.member.dto.EvaluationDTO;
import com.oopsw.member.dto.GradeDTO;
import com.oopsw.member.dto.RegisterDTO;

@Service
public class GradeService {

	@Autowired
	private GradeDAO gradeDAO;
	
	public Collection<GradeDTO> getEvalList(String studentId, int regYear,String regSemester) {
		// TODO Auto-generated method stub
		return gradeDAO.getEvalList(studentId, regYear, regSemester);
	}
	
	
	public int setEval(EvaluationDTO evaluationDTO) {
		return gradeDAO.setEval(evaluationDTO);
	}


	public Collection<GradeDTO> getSemGradeList(String studentId, int regYear, String regSemester) {
		// TODO Auto-generated method stub
		return gradeDAO.getSemGradeList(studentId, regYear, regSemester);
	}

	public Collection<GradeDTO> gradeTotal(String studentId) {
		// TODO Auto-generated method stub
		return gradeDAO.getAllGradeList(studentId);
	}
	
	public Collection<RegisterDTO> getYearSemesterList(String studentId) {
		return gradeDAO.getYearSemesterList(studentId);
	}


	public GradeDTO getRegisterInfo(int registerNo) {
		
		return gradeDAO.getRegisterInfo(registerNo);
	}
		
	
}
