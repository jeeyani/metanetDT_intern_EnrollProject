package com.oopsw.member.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oopsw.member.dao.PlanDAO;
import com.oopsw.member.dao.RegisterDAO;
import com.oopsw.member.dto.RegisterDTO;
import com.oopsw.member.dto.SubjectDTO;

@Service
public class PlanService {
	
	@Autowired
	private PlanDAO planDAO;
	
	public Collection<SubjectDTO> getSelectPlanList(SubjectDTO search) {
		
		return planDAO.getSelectPlanList(search);
	}

	public SubjectDTO getPlanDetail(int subjectNo) {
		
		return planDAO.getPlanDetail(subjectNo);
	}


}
