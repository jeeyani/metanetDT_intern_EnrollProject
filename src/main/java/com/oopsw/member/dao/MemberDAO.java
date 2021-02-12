package com.oopsw.member.dao;

import java.util.Collection;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.oopsw.member.dto.StudentDTO;
@Repository
public interface MemberDAO {

	
	public String login(@Param("studentId")String id, @Param("pw")String pw);
	
	
	public Collection<String> getMembers();

	public StudentDTO getStudentInfo(@Param("studentId")String studentId);

}
