package com.oopsw.member.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oopsw.member.dao.TimetableDAO;
import com.oopsw.member.dto.SubjectDTO;

@Service
public class TimetableService {
	
	@Autowired
	private TimetableDAO timetableDAO;
	
	public Collection<SubjectDTO> getTimeTable(String studentId, int regYear, String regSemester){
		return timetableDAO.getTimeTable(studentId, regYear, regSemester);
	}
}
