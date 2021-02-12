package com.oopsw.member.dao;

import java.util.Collection;

import org.apache.ibatis.annotations.Param;

import com.oopsw.member.dto.GradeDTO;

public interface GradeDAO {
	public Collection<GradeDTO> getEvalList(@Param("studentId")String id, @Param("regYear")int regYear, @Param("regSemester")String regSemester);

	public boolean setEval(@Param("registerNo")int registerNo, @Param("evalHow")int evalHow, @Param("evalPlanning")int evalPlanning,
			@Param("evalGoal")int evalGoal, @Param("evalConsider")int evalConsider, @Param("evalTest")int evalTest);

	public Collection<GradeDTO> getSemGradeList(@Param("studentId")String studentId, @Param("regYear")int regYear, @Param("regSemester")String regSemester);

	public Collection<GradeDTO> getAllGradeList(@Param("studentId")String studentId);

}
