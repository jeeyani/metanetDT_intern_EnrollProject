package com.oopsw.member.dao;

import java.util.Collection;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.oopsw.member.dto.RegisterDTO;
import com.oopsw.member.dto.SubjectDTO;

@Repository
public interface RegisterDAO {

	Collection<SubjectDTO> getNameList(@Param("subjectName")String subjectName);

	SubjectDTO getPlanDetail(@Param("subjectNo")int subjectNo);

	Collection<RegisterDTO> getSubjectList(@Param("register")RegisterDTO register);

}
