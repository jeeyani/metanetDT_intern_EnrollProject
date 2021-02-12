package com.oopsw.member.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oopsw.member.dao.RegisterDAO;
import com.oopsw.member.dto.SubjectDTO;

@Service
public class RegisterService {
	
	@Autowired
	private RegisterDAO registerDAO;
	
	public Collection<SubjectDTO> getNameList(String subjectName) {
		
		return registerDAO.getNameList(subjectName);
	}

}
