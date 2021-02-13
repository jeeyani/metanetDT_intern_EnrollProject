package com.oopsw.member.dto;

public class EvaluationDTO {
	
	private int registerNo;
	
	private int evalHow;
	private int evalPlanning;
	private int evalGoal;
	private int evalConsider;
	private int evalTest;
	
	public EvaluationDTO(int registerNo, int evalHow, int evalPlanning, int evalGoal, int evalConsider, int evalTest) {		
		setRegisterNo(registerNo);
		setEvalHow(evalHow);
		setEvalPlanning(evalPlanning);
		setEvalConsider(evalConsider);
		setEvalTest(evalTest);
	}
	
	@Override
	public String toString() {
		return "EvaluationDTO [registerNo=" + registerNo + ", evalHow=" + evalHow + ", evalPlanning=" + evalPlanning
				+ ", evalGoal=" + evalGoal + ", evalConsider=" + evalConsider + ", evalTest=" + evalTest + "]";
	}

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
	public int getEvalPlanning() {
		return evalPlanning;
	}
	public void setEvalPlanning(int evalPlanning) {
		this.evalPlanning = evalPlanning;
	}
	public int getEvalGoal() {
		return evalGoal;
	}
	public void setEvalGoal(int evalGoal) {
		this.evalGoal = evalGoal;
	}
	public int getEvalConsider() {
		return evalConsider;
	}
	public void setEvalConsider(int evalConsider) {
		this.evalConsider = evalConsider;
	}
	public int getEvalTest() {
		return evalTest;
	}
	public void setEvalTest(int evalTest) {
		this.evalTest = evalTest;
	}
	
	
}
