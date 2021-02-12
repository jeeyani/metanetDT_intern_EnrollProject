package com.oopsw.member.dto;

public class GradeDTO {	
	//과목
	private String subjGroup;
	private String subjName;
	private int subjScore;
	private String subjProfessor;
	//수강
	private int registerNo;
	private double grade;
	private int regYear;
	private String regSemester;
	private int evalHow;
	//학적
	private String name;
	//학과
	private String deptName;
	
	
	
	public int getRegisterNo() {
		return registerNo;
	}
	public void setRegisterNo(int registerNo) {
		this.registerNo = registerNo;
	}
	public int getEvalHow() {
		return evalHow;
	}
	public void setEvalHow(int evalHow) {
		this.evalHow = evalHow;
	}
	public int getRegYear() {
		return regYear;
	}
	public void setRegYear(int regYear) {
		this.regYear = regYear;
	}
	public String getRegSemester() {
		return regSemester;
	}
	public void setRegSemester(String regSemester) {
		this.regSemester = regSemester;
	}
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
	public double getGrade() {
		return grade;
	}
	public void setGrade(double grade) {
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
