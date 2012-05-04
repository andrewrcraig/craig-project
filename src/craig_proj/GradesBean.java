package craig_proj;

public class GradesBean {

	private double  lab0, lab1, lab2, lab3, lab4, lab5, lab6, 
					lab7, lab8, midterm, assignment1, assignment2, 
					participation, finalExam, quiz1, quiz2, quiz3;

	public GradesBean() {
        super();// TODO 
	}  
	
//GETTERS
	
	public double getLab0() {
		return lab0;
	}
	public double getLab1() {
		return lab1;
	}
	public double getLab2() {
		return lab2;
	}
	public double getLab3() {
		return lab3;
	}
	public double getLab4() {
		return lab4;
	}
	public double getLab5() {
		return lab5;
	}
	public double getLab6() {
		return lab6;
	}
	public double getLab7() {
		return lab7;
	}
	public double getLab8() {
		return lab8;
	}
	public double getMidterm() {
		return midterm;
	}
	public double getAssignment1() {
		return assignment1;
	}
	public double getAssignment2() {
		return assignment2;
	}
	public double getParticipation() {
		return participation;
	}
	public double getFinalExam() {
		return finalExam;
	}
	public double getQuiz1() {
		return quiz1;
	}
	public double getQuiz2() {
		return quiz2;
	}
	public double getQuiz3() {
		return quiz3;
	}

// SETTERS
	public void setLab0(double lab0) {
		this.lab0 = lab0;
	}
	public void setLab1(double lab1) {
		this.lab1 = lab1;
	}
	public void setLab2(double lab2) {
		this.lab2 = lab2;
	}
	public void setLab3(double lab3) {
		this.lab3 = lab3;
	}
	public void setLab4(double lab4) {
		this.lab4 = lab4;
	}
	public void setLab5(double lab5) {
		this.lab5 = lab5;
	}
	public void setLab6(double lab6) {
		this.lab6 = lab6;
	}
	public void setLab7(double lab7) {
		this.lab7 = lab7;
	}
	public void setLab8(double lab8) {
		this.lab8 = lab8;
	}
	public void setMidterm(double midterm) {
		this.midterm = midterm;
	}
	public void setAssignment1(double assignment1) {
		this.assignment1 = assignment1;
	}
	public void setAssignment2(double assignment2) {
		this.assignment2 = assignment2;
	}
	public void setParticipation(double participation) {
		this.participation = participation;
	}
	public void setFinalExam(double finalExam) {
		this.finalExam = finalExam;
	}
	public void setQuiz1(double quiz1) {
		this.quiz1 = quiz1;
	}
	public void setQuiz2(double quiz2) {
		this.quiz2 = quiz2;
	}
	public void setQuiz3(double quiz3) {
		this.quiz3 = quiz3;
	}

	public double getLabsAverage(){
		double labTotal = lab0 + lab1 + lab2 + lab3 + lab4 
				+ lab5 + lab6 + lab7 + lab8;
		double labAvg = labTotal / 1.6;
		return labAvg;
	}
	
	public double getAssignmentsAverage() {
		double assign = ((assignment1 + assignment2) + getLabsAverage());
		double assignAvg = assign / 3;
		return assignAvg;
	}
	
	public double getQuizzesAverage() {
		double quizTotal = quiz1 + quiz2 + quiz3;
		double quizAvg = quizTotal / 3 ;
		return quizAvg;	
	}
	
	public double getOverallGrade() {
		double total = (getQuizzesAverage() * .05 ) + (getAssignmentsAverage() * .50) 
				+ (participation * .05) + (midterm * .15) + (finalExam * .25);
		return total;
	}
}
