package com.oopsw.member.dao;

import java.util.Collection;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class MemberDAOmpl implements MemberDAO {

	@Autowired
	private SqlSessionTemplate sst;
	
	@Override
	public String login(String id, String pw) {
		String studentId = sst.selectOne(id,pw);
		
		return studentId;
	}

	@Override
	public Collection<String> getMembers() {
		// TODO Auto-generated method stub
		return null;
	}

}
