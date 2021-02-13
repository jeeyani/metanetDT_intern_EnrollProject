package com.oopsw.member.dao;

import java.util.Collection;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.oopsw.member.dto.RegisterDTO;
import com.oopsw.member.dto.SubjectDTO;

@Repository
public interface PlanDAO {

	public Collection<SubjectDTO> getSelectPlanList(@Param("search")SubjectDTO search);

	public SubjectDTO getPlanDetail(@Param("subjectNo")int subjectNo);

}
