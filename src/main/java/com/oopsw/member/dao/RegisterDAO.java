package com.oopsw.member.dao;

import java.util.Collection;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.oopsw.member.dto.SubjectDTO;

@Repository
public interface RegisterDAO {

	Collection<SubjectDTO> getNameList(@Param("subjectName")String subjectName);

}
