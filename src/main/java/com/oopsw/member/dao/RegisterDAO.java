package com.oopsw.member.dao;

import java.util.Collection;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.oopsw.member.dto.RegisterDTO;
import com.oopsw.member.dto.SubjectDTO;

@Repository
public interface RegisterDAO {

	public Collection<SubjectDTO> getNameList(@Param("subjectName")String subjectName);

	public SubjectDTO getPlanDetail(@Param("subjectNo")int subjectNo);

	public Collection<RegisterDTO> getSubjectList(@Param("register")RegisterDTO register);

	public Collection<RegisterDTO> getRegisterList(@Param("register")RegisterDTO register);

	public int setRegister(@Param("register")RegisterDTO register);

	public int deleteRegister(@Param("register")RegisterDTO register);

	public Collection<RegisterDTO> getSelectList(@Param("register")RegisterDTO register);

	public Collection<SubjectDTO> getTimeTable(@Param("studentId")String studentId, @Param("regYear")int regYear, @Param("regSemester")String regSemester);
}
