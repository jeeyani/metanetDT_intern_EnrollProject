package com.oopsw.member.dao;

import java.util.Collection;

import org.apache.ibatis.annotations.Param;

import com.oopsw.member.dto.EvaluationDTO;
import com.oopsw.member.dto.GradeDTO;
import com.oopsw.member.dto.RegisterDTO;

public interface GradeDAO {
	public Collection<GradeDTO> getEvalList(@Param("studentId")String id, @Param("regYear")int regYear, @Param("regSemester")String regSemester);

	public int setEval(EvaluationDTO evaluationDTO);

	public Collection<GradeDTO> getSemGradeList(@Param("studentId")String studentId, @Param("regYear")int regYear, @Param("regSemester")String regSemester);

	public Collection<GradeDTO> getAllGradeList(@Param("studentId")String studentId);
	
	public Collection<RegisterDTO> getYearSemesterList(@Param("studentId")String studentId);

	public GradeDTO getRegisterInfo(@Param("registerNo")int registerNo);

}
