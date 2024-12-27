package tap.app.entities;

import java.sql.Date;

public class TrainerAttendance {

	private int id;
	private String trainerName;
	private String trainerEmailId;
	private String attendance;
	private Date attendanceDate;
	private Assign assign;
	public TrainerAttendance() {
		super();
	}
	public TrainerAttendance(int id, String trainerName, String trainerEmailId, String attendance, Date attendanceDate,
			Assign assign) {
		super();
		this.id = id;
		this.trainerName = trainerName;
		this.trainerEmailId = trainerEmailId;
		this.attendance = attendance;
		this.attendanceDate = attendanceDate;
		this.assign = assign;
	}
	public TrainerAttendance(String trainerName, String trainerEmailId, String attendance, Date attendanceDate,
			Assign assign) {
		super();
		this.trainerName = trainerName;
		this.trainerEmailId = trainerEmailId;
		this.attendance = attendance;
		this.attendanceDate = attendanceDate;
		this.assign = assign;
	}
	
	public TrainerAttendance(String trainerName, String trainerEmailId, String attendance, Date attendanceDate) {
		super();
		this.trainerName = trainerName;
		this.trainerEmailId = trainerEmailId;
		this.attendance = attendance;
		this.attendanceDate = attendanceDate;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getAttendance() {
		return attendance;
	}
	public void setAttendance(String attendance) {
		this.attendance = attendance;
	}
	public Date getAttendanceDate() {
		return attendanceDate;
	}
	public void setAttendanceDate(Date attendanceDate) {
		this.attendanceDate = attendanceDate;
	}
	public Assign getAssign() {
		return assign;
	}
	public void setAssign(Assign assign) {
		this.assign = assign;
	}
	@Override
	public String toString() {
		return "TrainerAttendance [id=" + id + ", trainerName=" + trainerName + ", trainerEmailId=" + trainerEmailId
				+ ", attendance=" + attendance + ", attendanceDate=" + attendanceDate + ", assign=" + assign + "]";
	}
	
}
