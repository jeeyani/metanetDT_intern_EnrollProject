package com.oopsw.member.dao;

import java.util.Collection;

import org.apache.ibatis.annotations.Param;

import com.oopsw.member.dto.gradeDTO;

public interface GradeDAO {
	public Collection<gradeDTO> getEvalList(@Param("studentId")String id, @Param("regYear")int regYear, @Param("regSemester")String regSemester);

	public Object setEval(int registerNo);

}
