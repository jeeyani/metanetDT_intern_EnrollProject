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
	
	public Collection<SubjectDTO> getNameList(String subjectName) {
		
		return registerDAO.getNameList(subjectName);
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



}
