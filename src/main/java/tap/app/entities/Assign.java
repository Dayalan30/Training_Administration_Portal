package tap.app.entities;

import java.sql.Date;


public class Assign {

 private int id;
 private String trainerFirstname;
 private String trainerEmailId;
 private String traineeFirstName;
 private String traineeEmailId;
 private Date startingDate;
 private Date endingDate;
 private String company;
 private String courseName;
 private String location;
 private String batchName;
 
 
public String getBatchName() {
	return batchName;
}

public void setBatchName(String batchName) {
	this.batchName = batchName;
}

public Assign() {
	super();
	
}

public Assign(int id, String trainerFirstname, String trainerEmailId, String traineeFirstName, String traineeEmailId,
		Date startingDate, Date endingDate, String company, String courseName, String location,String batchName) {
	super();
	this.id = id;
	this.trainerFirstname = trainerFirstname;
	this.trainerEmailId = trainerEmailId;
	this.traineeFirstName = traineeFirstName;
	this.traineeEmailId = traineeEmailId;
	this.startingDate = startingDate;
	this.endingDate = endingDate;
	this.company = company;
	this.courseName = courseName;
	this.location = location;
	this.batchName = batchName;
}

public Assign(String trainerFirstname, String trainerEmailId, String traineeFirstName, String traineeEmailId,String batchName) {
	super();
	this.trainerFirstname = trainerFirstname;
	this.trainerEmailId = trainerEmailId;
	this.traineeFirstName = traineeFirstName;
	this.traineeEmailId = traineeEmailId;
	this.batchName = batchName;
	
}

public Assign(String trainerFirstname, String trainerEmailId,String batchName) {
	super();
	this.trainerFirstname = trainerFirstname;
	this.trainerEmailId = trainerEmailId;
	this.batchName = batchName;
}

public Assign(String traineeFirstName) {
	super();
	this.traineeFirstName = traineeFirstName;
}

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getTrainerFirstname() {
	return trainerFirstname;
}

public void setTrainerFirstname(String trainerFirstname) {
	this.trainerFirstname = trainerFirstname;
}

public String getTrainerEmailId() {
	return trainerEmailId;
}

public void setTrainerEmailId(String trainerEmailId) {
	this.trainerEmailId = trainerEmailId;
}

public String getTraineeFirstName() {
	return traineeFirstName;
}

public void setTraineeFirstName(String traineeFirstName) {
	this.traineeFirstName = traineeFirstName;
}

public String getTraineeEmailId() {
	return traineeEmailId;
}

public void setTraineeEmailId(String traineeEmailId) {
	this.traineeEmailId = traineeEmailId;
}

public Date getStartingDate() {
	return startingDate;
}

public void setStartingDate(Date startingDate) {
	this.startingDate = startingDate;
}

public Date getEndingDate() {
	return endingDate;
}

public void setEndingDate(Date endingDate) {
	this.endingDate = endingDate;
}

public String getCompany() {
	return company;
}

public void setCompany(String company) {
	this.company = company;
}

public String getCourseName() {
	return courseName;
}

public void setCourseName(String courseName) {
	this.courseName = courseName;
}

public String getLocation() {
	return location;
}

public void setLocation(String location) {
	this.location = location;
}

@Override
public String toString() {
	return "Assign [id=" + id + ", trainerFirstname=" + trainerFirstname + ", trainerEmailId=" + trainerEmailId
			+ ", traineeFirstName=" + traineeFirstName + ", traineeEmailId=" + traineeEmailId + ", startingDate="
			+ startingDate + ", endingDate=" + endingDate + ", company=" + company + ", courseName=" + courseName
			+ ", location=" + location + ", batchName=" + batchName + "]";
}



}