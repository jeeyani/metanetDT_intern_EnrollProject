package com.oopsw.member.dao;

import java.util.Collection;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
@Repository
public interface MemberDAO {

	
	public String login(@Param("studentId")String id, @Param("pw")String pw);
	
//	public String login(String id, String pw) {
//		if(id.equals("admin") && pw.equals("123"))
//			return "������";
//		return null;
//	}
	public Collection<String> getMembers();

}
