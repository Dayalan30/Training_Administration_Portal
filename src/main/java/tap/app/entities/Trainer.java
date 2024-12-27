package tap.app.entities;
import java.sql.Date;


public class Trainer { 
		private int id;
		private String	firstName;
		private String	lastName;		
		private String emailId;
		private String password;
		private String mobileNo;
		private Date dateOfBirth;
		private String languages;
		private String status;
		private boolean availability;
		private int traineeCount;
		private double avgRating;
		
		public Trainer() {
			super();
		
		}
		public Trainer(String firstName, String lastName, String emailId, String password, String mobileNo,
				Date dateOfBirth, String languages, String status, boolean availability,int traineeCount, double avgRating) {
			super();
			this.firstName = firstName;
			this.lastName = lastName;
			this.emailId = emailId;
			this.password = password;
			this.mobileNo = mobileNo;
			this.dateOfBirth = dateOfBirth;
			this.languages = languages;
			this.status = status;
			this.availability = availability;
			this.traineeCount=traineeCount;
			this.avgRating=avgRating;
		}

		public Trainer(int id, String firstName, String lastName, String emailId, String password, String mobileNo,
				Date dateOfBirth, String languages, String status, boolean availability,int traineeCount,double avgRating) {
			super();
			this.id = id;
			this.firstName = firstName;
			this.lastName = lastName;
			this.emailId = emailId;
			this.password = password;
			this.mobileNo = mobileNo;
			this.dateOfBirth = dateOfBirth;
			this.languages = languages;
			this.status = status;
			this.availability = availability;
			this.traineeCount=traineeCount;
			this.avgRating=avgRating;
		}
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getFirstName() {
			return firstName;
		}
		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}
		public String getLastName() {
			return lastName;
		}
		public void setLastName(String lastName) {
			this.lastName = lastName;
		}
		public String getEmailId() {
			return emailId;
		}
		public void setEmailId(String emailId) {
			this.emailId = emailId;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getMobileNo() {
			return mobileNo;
		}
		public void setMobileNo(String mobileNo) {
			this.mobileNo = mobileNo;
		}
		public Date getDateOfBirth() {
			return dateOfBirth;
		}
		public int getTraineeCount() {
			return traineeCount;
		}
		public void setTraineeCount(int traineeCount) {
			this.traineeCount = traineeCount;
		}
		public void setDateOfBirth(Date dateOfBirth) {
			this.dateOfBirth = dateOfBirth;
		}
		public String getLanguages() {
			return languages;
		}
		public void setLanguages(String languages) {
			this.languages = languages;
		}
		public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}
		public boolean isAvailability() {
			return availability;
		}
		public void setAvailability(boolean availability) {
			this.availability = availability;
		}
		
		public double getAvgRating() {
			return avgRating;
		}
		public void setAvgRating(double avgRating) {
			this.avgRating = avgRating;
		}
		@Override
		public String toString() {
			return "Trainer [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", emailId=" + emailId
					+ ", password=" + password + ", mobileNo=" + mobileNo + ", dateOfBirth=" + dateOfBirth
					+ ", languages=" + languages + ", status=" + status + ", availability=" + availability
					+ ", traineeCount=" + traineeCount + ", avgRating=" + avgRating + "]";
		}
		
	
		
		
		
}