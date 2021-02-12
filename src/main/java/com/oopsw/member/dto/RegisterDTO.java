package com.oopsw.member.dto;

public class RegisterDTO {

	//교과목정보
	private int subjectNo;
	private String subjGroup;
	private String subjName;
	private String subjSemester;
	private int subjScore;
	private String subjProfessor;
	private String lectDate;
	private int lectStart;
	private int lectEnd;
	private String lectRoom;
	
	//학과정보
	private int deptmentNo;
	private String deptName;
	
	//수강정보
	private int studentId;
	private int registerNo;
	private int regYear;
	private String regSemester;
	/*private int evalHow;
	private int evalPlanning;
	private int evalGoal;
	private int evalConsider;
	private int evalTest;*/
	
	public int getSubjectNo() {
		return subjectNo;
	}
	public void setSubjectNo(int subjectNo) {
		this.subjectNo = subjectNo;
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
	public String getSubjSemester() {
		return subjSemester;
	}
	public void setSubjSemester(String subjSemester) {
		this.subjSemester = subjSemester;
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
	public String getLectDate() {
		return lectDate;
	}
	public void setLectDate(String lectDate) {
		this.lectDate = lectDate;
	}
	public int getLectStart() {
		return lectStart;
	}
	public void setLectStart(int lectStart) {
		this.lectStart = lectStart;
	}
	public int getLectEnd() {
		return lectEnd;
	}
	public void setLectEnd(int lectEnd) {
		this.lectEnd = lectEnd;
	}
	public String getLectRoom() {
		return lectRoom;
	}
	public void setLectRoom(String lectRoom) {
		this.lectRoom = lectRoom;
	}
	public int getDeptmentNo() {
		return deptmentNo;
	}
	public void setDeptmentNo(int deptmentNo) {
		this.deptmentNo = deptmentNo;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public int getRegisterNo() {
		return registerNo;
	}
	public void setRegisterNo(int registerNo) {
		this.registerNo = registerNo;
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
	
	
	
	
	
	
	
}
