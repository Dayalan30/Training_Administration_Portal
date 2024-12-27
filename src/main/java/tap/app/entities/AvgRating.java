package tap.app.entities;

public class AvgRating {

	private Double avgRating;
	private String emailId;
	
	
	
	public AvgRating() {
		super();
		
	}
	
	public AvgRating(Double avgRating, String emailId) {
		super();
		this.avgRating = avgRating;
		this.emailId = emailId;
	}

	public Double getAvgRating() {
		return avgRating;
	}
	public void setAvgRating(Double avgRating) {
		this.avgRating = avgRating;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	@Override
	public String toString() {
		return "AvgRating [avgRating=" + avgRating + ", emailId=" + emailId + "]";
	}
	
}
