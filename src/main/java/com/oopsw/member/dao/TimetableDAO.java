package com.oopsw.member.dao;

import java.util.Collection;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.oopsw.member.dto.SubjectDTO;

@Repository
public interface TimetableDAO {
	public Collection<SubjectDTO> getTimeTable(@Param("studentId")String studentId, @Param("regYear")int regYear, @Param("regSemester")String regSemester);
}
