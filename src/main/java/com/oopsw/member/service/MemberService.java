package com.oopsw.member.service;

import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oopsw.member.dao.MemberDAO;
import com.oopsw.member.dto.StudentDTO;

@Service
public class MemberService {
	@Autowired
	private MemberDAO memberDAO;

	public String login(String id, String pw) {
		return memberDAO.login(id, pw);
	}
	
	public Collection<String> getMembers() {
		// TODO Auto-generated method stub
		return memberDAO.getMembers();
	}
	public StudentDTO getStudentInfo(String studentId) {
		// TODO Auto-generated method stub
		return memberDAO.getStudentInfo(studentId);
	}
	
}
