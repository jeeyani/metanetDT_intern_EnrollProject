package com.oopsw.member.dto;

public class SubjectDTO {

	//검색 항목
	private String radioItem;
	private String search;
	
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
	
	//강의 계획서 정보
	private String outline; //강의개요
	private String proceed; //강의진행방식
	private String note; //유의사항
	private String evaluation; //평가방법
	private String progressPlan; //강의진행계획
	
	
	
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
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
	public String getOutline() {
		return outline;
	}
	public void setOutline(String outline) {
		this.outline = outline;
	}
	public String getProceed() {
		return proceed;
	}
	public void setProceed(String proceed) {
		this.proceed = proceed;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public String getEvaluation() {
		return evaluation;
	}
	public void setEvaluation(String evaluation) {
		this.evaluation = evaluation;
	}
	public String getProgressPlan() {
		return progressPlan;
	}
	public void setProgressPlan(String progressPlan) {
		this.progressPlan = progressPlan;
	}
	
	
	public String getRadioItem() {
		return radioItem;
	}
	public void setRadioItem(String radioItem) {
		this.radioItem = radioItem;
	}
	@Override
	public String toString() {
		return "SubjectDTO [radioItem=" + radioItem + ", search=" + search + ", subjectNo=" + subjectNo + ", subjGroup="
				+ subjGroup + ", subjName=" + subjName + ", subjSemester=" + subjSemester + ", subjScore=" + subjScore
				+ ", subjProfessor=" + subjProfessor + ", lectDate=" + lectDate + ", lectStart=" + lectStart
				+ ", lectEnd=" + lectEnd + ", lectRoom=" + lectRoom + ", deptmentNo=" + deptmentNo + ", deptName="
				+ deptName + ", outline=" + outline + ", proceed=" + proceed + ", note=" + note + ", evaluation="
				+ evaluation + ", progressPlan=" + progressPlan + "]";
	}

}
