package tap.app.entities;
import java.sql.Date;


public class Trainee { 
		private int id;
		private String	firstName;
		private String	lastName;	
		private String userName;
		private String password;
		private String emailId;	
		private String company;
		private String course;
		private Date dateOfBirth;
		private String gender;
		private String mobileNo;
		private String country;		
		private String state;
		private String city;
		private String rfs;
		private String status;
		private boolean assigned; 
		
		public Trainee() {
			super();
			
		}

		public Trainee(String firstName, String lastName, String userName, String password, String emailId,
				String company, String course, Date dateOfBirth, String gender, String mobileNo, String country,
				String state, String city, String rfs, String status, boolean assigned) {
			super();
			this.firstName = firstName;
			this.lastName = lastName;
			this.userName = userName;
			this.password = password;
			this.emailId = emailId;
			this.company = company;
			this.course = course;
			this.dateOfBirth = dateOfBirth;
			this.gender = gender;
			this.mobileNo = mobileNo;
			this.country = country;
			this.state = state;
			this.city = city;
			this.rfs = rfs;
			this.status = status;
			this.assigned = assigned;
		}

		public Trainee(int id, String firstName, String lastName, String userName, String password, String emailId,
				String company, String course, Date dateOfBirth, String gender, String mobileNo, String country,
				String state, String city, String rfs, String status, boolean assigned) {
			super();
			this.id = id;
			this.firstName = firstName;
			this.lastName = lastName;
			this.userName = userName;
			this.password = password;
			this.emailId = emailId;
			this.company = company;
			this.course = course;
			this.dateOfBirth = dateOfBirth;
			this.gender = gender;
			this.mobileNo = mobileNo;
			this.country = country;
			this.state = state;
			this.city = city;
			this.rfs = rfs;
			this.status = status;
			this.assigned = assigned;
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

		public String getUserName() {
			return userName;
		}

		public void setUserName(String userName) {
			this.userName = userName;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public String getEmailId() {
			return emailId;
		}

		public void setEmailId(String emailId) {
			this.emailId = emailId;
		}

		public String getCompany() {
			return company;
		}

		public void setCompany(String company) {
			this.company = company;
		}

		public String getCourse() {
			return course;
		}

		public void setCourse(String course) {
			this.course = course;
		}

		public Date getDateOfBirth() {
			return dateOfBirth;
		}

		public void setDateOfBirth(Date dateOfBirth) {
			this.dateOfBirth = dateOfBirth;
		}

		public String getGender() {
			return gender;
		}

		public void setGender(String gender) {
			this.gender = gender;
		}

		public String getMobileNo() {
			return mobileNo;
		}

		public void setMobileNo(String mobileNo) {
			this.mobileNo = mobileNo;
		}

		public String getCountry() {
			return country;
		}

		public void setCountry(String country) {
			this.country = country;
		}

		public String getState() {
			return state;
		}

		public void setState(String state) {
			this.state = state;
		}

		public String getCity() {
			return city;
		}

		public void setCity(String city) {
			this.city = city;
		}

		public String getRfs() {
			return rfs;
		}

		public void setRfs(String rfs) {
			this.rfs = rfs;
		}

		public String getStatus() {
			return status;
		}

		public void setStatus(String status) {
			this.status = status;
		}

		public boolean isAssigned() {
			return assigned;
		}

		public void setAssigned(boolean assigned) {
			this.assigned = assigned;
		}

		@Override
		public String toString() {
			return "Trainee [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", userName="
					+ userName + ", password=" + password + ", emailId=" + emailId + ", company=" + company
					+ ", course=" + course + ", dateOfBirth=" + dateOfBirth + ", gender=" + gender + ", mobileNo="
					+ mobileNo + ", country=" + country + ", state=" + state + ", city=" + city + ", rfs=" + rfs
					+ ", status=" + status + ", assigned=" + assigned + "]";
		}

		
	
		}