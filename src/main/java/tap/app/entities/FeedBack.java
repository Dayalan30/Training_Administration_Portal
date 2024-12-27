package tap.app.entities;

import java.sql.Date;

public class FeedBack {

	private int id;
	private String traineeEmail;
	private String trainerName;
	private String trainerEmailId;
	private String feedbackText;
	private int rating;
	private Date feedbackDate;
	public FeedBack() {
		super();
	
	}
	public FeedBack(int id, String traineeEmail,String trainerName,String trainerEmailId, String feedbackText, int rating, Date feedbackDate) {
		super();
		this.id = id;
		this.traineeEmail = traineeEmail;
		this.trainerName=trainerName;
		this.trainerEmailId=trainerEmailId;
		this.feedbackText = feedbackText;
		this.rating = rating;
		this.feedbackDate = feedbackDate;
		
	}
	public FeedBack(String traineeEmail, String trainerName,String trainerEmailId,String feedbackText, int rating, Date feedbackDate) {
		super();
		this.traineeEmail = traineeEmail;
		this.trainerName=trainerName;
		this.trainerEmailId=trainerEmailId;
		this.feedbackText = feedbackText;
		this.rating = rating;
		this.feedbackDate = feedbackDate;
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTraineeEmail() {
		return traineeEmail;
	}
	public void setTraineeEmail(String traineeEmail) {
		this.traineeEmail = traineeEmail;
	}
	public String getFeedbackText() {
		return feedbackText;
	}
	public void setFeedbackText(String feedbackText) {
		this.feedbackText = feedbackText;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public Date getFeedbackDate() {
		return feedbackDate;
	}
	public void setFeedbackDate(Date feedbackDate) {
		this.feedbackDate = feedbackDate;
	}
	
	public String getTrainerName() {
		return trainerName;
	}
	public void setTrainerName(String trainerName) {
		this.trainerName = trainerName;
	}
	public String getTrainerEmailId() {
		return trainerEmailId;
	}
	public void setTrainerEmailId(String trainerEmailId) {
		this.trainerEmailId = trainerEmailId;
	}
	@Override
	public String toString() {
		return "FeedBack [id=" + id + ", traineeEmail=" + traineeEmail + ", trainerName=" + trainerName
				+ ", trainerEmailId=" + trainerEmailId + ", feedbackText=" + feedbackText + ", rating=" + rating
				+ ", feedbackDate=" + feedbackDate + "]";
	}

	
}
