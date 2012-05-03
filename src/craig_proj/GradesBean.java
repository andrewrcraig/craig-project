package craig_proj;

//import javax.ejb.LocalBean;
//import javax.ejb.Stateless;

public class GradesBean {

	private Integer lab0, lab1, lab2, lab3, lab4,
		lab5, lab6, lab7, lab8;
	private Integer midterm, assignment1, assignment2, 
		quiz1, quiz2, quiz3, participation, finalExam;
 
	
	public GradesBean() {
        // TODO 
	}  
	
    private Integer getLab0() {
		return lab0;
	}
	private void setLab0(Integer lab0) {
		this.lab0 = lab0;
	}
	private Integer getLab1() {
		return lab1;
	}
	private void setLab1(Integer lab1) {
		this.lab1 = lab1;
	}
	private Integer getLab2() {
		return lab2;
	}
	private void setLab2(Integer lab2) {
		this.lab2 = lab2;
	}
	private Integer getLab3() {
		return lab3;
	}
	private void setLab3(Integer lab3) {
		this.lab3 = lab3;
	}
	private Integer getLab4() {
		return lab4;
	}
	private void setLab4(Integer lab4) {
		this.lab4 = lab4;
	}
	private Integer getLab5() {
		return lab5;
	}
	private void setLab5(Integer lab5) {
		this.lab5 = lab5;
	}
	private Integer getLab6() {
		return lab6;
	}
	private void setLab6(Integer lab6) {
		this.lab6 = lab6;
	}
	private Integer getLab7() {
		return lab7;
	}
	private void setLab7(Integer lab7) {
		this.lab7 = lab7;
	}
	private Integer getLab8() {
		return lab8;
	}
	private void setLab8(Integer lab8) {
		this.lab8 = lab8;
	}
	private Integer getMidterm() {
		return midterm;
	}
	private void setMidterm(Integer midterm) {
		this.midterm = midterm;
	}
	private Integer getAssignment1() {
		return assignment1;
	}
	private void setAssignment1(Integer assignment1) {
		this.assignment1 = assignment1;
	}
	private Integer getAssignment2() {
		return assignment2;
	}
	private void setAssignment2(Integer assignment2) {
		this.assignment2 = assignment2;
	}
	private Integer getQuiz1() {
		return quiz1;
	}
	private void setQuiz1(Integer quiz1) {
		this.quiz1 = quiz1;
	}
	private Integer getQuiz2() {
		return quiz2;
	}
	private void setQuiz2(Integer quiz2) {
		this.quiz2 = quiz2;
	}
	private Integer getQuiz3() {
		return quiz3;
	}
	private void setQuiz3(Integer quiz3) {
		this.quiz3 = quiz3;
	}
	private Integer getParticipation() {
		return participation;
	}
	private void setParticipation(Integer participation) {
		this.participation = participation;
	}
	private Integer getFinalExam() {
		return finalExam;
	}
	private void setFinalExam(Integer finalExam) {
		this.finalExam = finalExam;
	}
	
	public double getLabsAverage(){
		Integer labTotal = lab0 + lab1 + lab2 + lab3 + lab4 
				+ lab5 + lab6 + lab7 + lab8;
		double labAvg = labTotal / 1.6;
		return labAvg;
	}
	
	public double getAssignmentsAverage(double labAvg) {
		double assign = assignment1 + assignment2 + labAvg;
		double assignAvg = assign / 3;
		return assignAvg;
	}
	
	public double getQuizzesAverage() {
		Integer quizTotal = quiz1 + quiz2 + quiz3;
		double quizAvg = quizTotal * 100;
		return quizAvg;	
	}
	
	public void getOverallGrade() {
		
	}
}
