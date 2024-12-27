package tap.app.entities;

public class AdminLogin {
 
	private String emailId;
	private String password;
	private String pwdSalt;
	private String pwdHash;
	public AdminLogin() {
		super();
		
	}
	public AdminLogin(String emailId, String password, String pwdSalt, String pwdHash) {
		super();
		this.emailId = emailId;
		this.password = password;
		this.pwdSalt = pwdSalt;
		this.pwdHash = pwdHash;
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
	public String getPwdSalt() {
		return pwdSalt;
	}
	public void setPwdSalt(String pwdSalt) {
		this.pwdSalt = pwdSalt;
	}
	public String getPwdHash() {
		return pwdHash;
	}
	public void setPwdHash(String pwdHash) {
		this.pwdHash = pwdHash;
	}
	@Override
	public String toString() {
		return "\n Login [emailId=" + emailId + ", password=" + password + ", pwdSalt=" + pwdSalt + ", pwdHash=" + pwdHash
				+ "]";
	}
	
	
}
