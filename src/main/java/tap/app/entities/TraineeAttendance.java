package tap.app.entities;

import java.sql.Date;

public class TraineeAttendance {

	private int Id;
	private String traineeName;
	private String traineeEmailId;
	private String attendance;
	private Date attendanceDate;
	private Assign assign;

	public TraineeAttendance() {
		super();
		
	}
	public TraineeAttendance(int id, String traineeName, String traineeEmailId, String attendance, Date attendanceDate,Assign assign) {
		super();
		Id = id;
		this.traineeName = traineeName;
		this.traineeEmailId = traineeEmailId;
		this.attendance = attendance;
		this.attendanceDate = attendanceDate;
		this.assign=assign;
		
	}
	public TraineeAttendance(String traineeName, String traineeEmailId,String attendance, Date attendanceDate,Assign assign) {
		super();
		this.traineeName = traineeName;
		this.traineeEmailId = traineeEmailId;
		this.attendance = attendance;
		this.attendanceDate = attendanceDate;
		this.assign=assign;
		
	}
	public TraineeAttendance(String traineeName, String traineeEmailId,String attendance, Date attendanceDate) {
		this.traineeName = traineeName;
		this.traineeEmailId = traineeEmailId;
		this.attendance = attendance;
		this.attendanceDate = attendanceDate;
		
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getTraineeName() {
		return traineeName;
	}
	public void setTraineeName(String traineeName) {
		this.traineeName = traineeName;
	}
	public String getTraineeEmailId() {
		return traineeEmailId;
	}
	public void setTraineeEmailId(String traineeEmailId) {
		this.traineeEmailId = traineeEmailId;
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
		return "TraineeAttendance [Id=" + Id + ", traineeName=" + traineeName + ", traineeEmailId=" + traineeEmailId
				+ ", attendance=" + attendance + ", attendanceDate=" + attendanceDate + ", assign=" + assign + "]";
	}
	
	
	
	
	
	
}
