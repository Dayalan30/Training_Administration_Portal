package tap.app.entities;
public class Mcq {
    private String courseName;
    private int week;
    private int questionNo;
    private String question;
    private String option1;
    private String option2;
    private String option3;
    private String option4;
    private String correctAnswer;
    
    private String resultScore;
    private String traineeEmail;
    
    

    public Mcq(String resultScore, String traineeEmail) {
		super();
		this.resultScore = resultScore;
		this.traineeEmail = traineeEmail;
	}



	public String getTraineeEmail() {
		return traineeEmail;
	}



	public void setTraineeEmail(String traineeEmail) {
		this.traineeEmail = traineeEmail;
	}



	public Mcq(String resultScore) {
		super();
		this.resultScore = resultScore;
	}



	// getters and setters

    public String getResultScore() {
		return resultScore;
	}



	public void setResultScore(String resultScore) {
		this.resultScore = resultScore;
	}



	public String getCourseName() {
		return courseName;
	}



	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}



	public int getWeek() {
		return week;
	}



	public void setWeek(int week) {
		this.week = week;
	}



	public int getQuestionNo() {
		return questionNo;
	}



	public void setQuestionNo(int questionNo) {
		this.questionNo = questionNo;
	}



	public String getQuestion() {
		return question;
	}



	public void setQuestion(String question) {
		this.question = question;
	}



	public String getOption1() {
		return option1;
	}



	public void setOption1(String option1) {
		this.option1 = option1;
	}



	public String getOption2() {
		return option2;
	}



	public void setOption2(String option2) {
		this.option2 = option2;
	}



	public String getOption3() {
		return option3;
	}



	public void setOption3(String option3) {
		this.option3 = option3;
	}



	public String getOption4() {
		return option4;
	}



	public void setOption4(String option4) {
		this.option4 = option4;
	}



	public String getCorrectAnswer() {
		return correctAnswer;
	}



	public void setCorrectAnswer(String correctAnswer) {
		this.correctAnswer = correctAnswer;
	}



	public Mcq(String courseName, int week, int questionNo, String question, String option1, String option2,
			String option3, String option4, String correctAnswer) {
		super();
		this.courseName = courseName;
		this.week = week;
		this.questionNo = questionNo;
		this.question = question;
		this.option1 = option1;
		this.option2 = option2;
		this.option3 = option3;
		this.option4 = option4;
		this.correctAnswer = correctAnswer;
	}



	public Mcq() {
		super();
		// TODO Auto-generated constructor stub
	}



	@Override
    public String toString() {
        return "McqEntity{" +
                "courseName='" + courseName + '\'' +
                ", week=" + week +
                ", questionNo=" + questionNo +
                ", question='" + question + '\'' +
                ", option1='" + option1 + '\'' +
                ", option2='" + option2 + '\'' +
                ", option3='" + option3 + '\'' +
                ", option4='" + option4 + '\'' +
                ", correctAnswer='" + correctAnswer + '\'' +
                '}';
    }
}
