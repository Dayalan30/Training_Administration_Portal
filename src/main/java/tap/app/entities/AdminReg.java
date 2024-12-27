package tap.app.entities;
import java.sql.Date;


public class AdminReg { 
		private int id;
		private String fullName;
		private String emailId;
		private String password;
		private String mobileNo;
		private Date dateOfBirth;
		private String gender;
		private boolean rootAdmin;
		private boolean status;
		public AdminReg() {
			super();
			
		}
		public AdminReg(String fullName, String emailId, String password, String mobileNo, Date dateOfBirth,
				String gender, boolean rootAdmin, boolean status) {
			super();
			this.fullName = fullName;
			this.emailId = emailId;
			this.password = password;
			this.mobileNo = mobileNo;
			this.dateOfBirth = dateOfBirth;
			this.gender = gender;
			this.rootAdmin = rootAdmin;
			this.status = status;
		}
		public AdminReg(int id, String fullName, String emailId, String password, String mobileNo, Date dateOfBirth,
				String gender, boolean rootAdmin, boolean status) {
			super();
			this.id = id;
			this.fullName = fullName;
			this.emailId = emailId;
			this.password = password;
			this.mobileNo = mobileNo;
			this.dateOfBirth = dateOfBirth;
			this.gender = gender;
			this.rootAdmin = rootAdmin;
			this.status = status;
		}
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getFullName() {
			return fullName;
		}
		public void setFullName(String fullName) {
			this.fullName = fullName;
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
		public void setDateOfBirth(Date dateOfBirth) {
			this.dateOfBirth = dateOfBirth;
		}
		public String getGender() {
			return gender;
		}
		public void setGender(String gender) {
			this.gender = gender;
		}
		public boolean isRootAdmin() {
			return rootAdmin;
		}
		public void setRootAdmin(boolean rootAdmin) {
			this.rootAdmin = rootAdmin;
		}
		public boolean isStatus() {
			return status;
		}
		public void setStatus(boolean status) {
			this.status = status;
		}
		@Override
		public String toString() {
			return "AdminReg [id=" + id + ", fullName=" + fullName + ", emailId=" + emailId + ", password=" + password
					+ ", mobileNo=" + mobileNo + ", dateOfBirth=" + dateOfBirth + ", gender=" + gender + ", rootAdmin="
					+ rootAdmin + ", status=" + status + "]";
		}
		
		
}