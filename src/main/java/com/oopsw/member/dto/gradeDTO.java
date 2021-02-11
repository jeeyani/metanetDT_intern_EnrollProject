package com.oopsw.member.dto;

public class GradeDTO {	
	//과목
	private String subjGroup;
	private String subjName;
	private int subjScore;
	private String subjProfessor;
	//수강
	private int grade;
	
	//학적
	private String name;
	//학과
	private String deptName;
	
	
	
	public String getSubjGroup() {
		return subjGroup;
	}
	public void setSubjGroup(String subjGroup) {
		this.subjGroup = subjGroup;
	}
	public String getSubjName() {
		return subjName;
	}
	public void setSubjName(String subjName) {
		this.subjName = subjName;
	}
	public int getSubjScore() {
		return subjScore;
	}
	public void setSubjScore(int subjScore) {
		this.subjScore = subjScore;
	}
	public String getSubjProfessor() {
		return subjProfessor;
	}
	public void setSubjProfessor(String subjProfessor) {
		this.subjProfessor = subjProfessor;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	
	
}
