package tap.app.entities;

import java.sql.Date;

public class Course {

	//`id`, `courseName`, `trainerName`, `startingDate`, `endingDate`, `location`, `feeAmount`, `discount`, `batchSIze`

private int id;
private String courseName;
private String trainerName;
private Date startingDate;
private Date endingDate;
private String location;
private int batchSize;
private String company;
private String batchName;


public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getCourseName() {
	return courseName;
}
public void setCourseName(String courseName) {
	this.courseName = courseName;
}
public String getTrainerName() {
	return trainerName;
}
public void setTrainerName(String trainerName) {
	this.trainerName = trainerName;
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
public String getLocation() {
	return location;
}
public void setLocation(String location) {
	this.location = location;
}
public int getBatchSize() {
	return batchSize;
}
public void setBatchSize(int batchSize) {
	this.batchSize = batchSize;
}
public String getCompany() {
	return company;
}
public void setCompany(String company) {
	this.company = company;
}
public String getBatchName() {
	return batchName;
}
public void setBatchName(String batchName) {
	this.batchName = batchName;
}
public Course(int id, String courseName, String trainerName, Date startingDate, Date endingDate, String location,
		int batchSize, String company, String batchName) {
	super();
	this.id = id;
	this.courseName = courseName;
	this.trainerName = trainerName;
	this.startingDate = startingDate;
	this.endingDate = endingDate;
	this.location = location;
	this.batchSize = batchSize;
	this.company = company;
	this.batchName = batchName;
}
public Course(String courseName, String trainerName, Date startingDate, Date endingDate, String location, int batchSize,
		String company, String batchName) {
	super();
	this.courseName = courseName;
	this.trainerName = trainerName;
	this.startingDate = startingDate;
	this.endingDate = endingDate;
	this.location = location;
	this.batchSize = batchSize;
	this.company = company;
	this.batchName = batchName;
}
public Course() {
	super();
	// TODO Auto-generated constructor stub
}
@Override
public String toString() {
	return "Course [id=" + id + ", courseName=" + courseName + ", trainerName=" + trainerName + ", startingDate="
			+ startingDate + ", endingDate=" + endingDate + ", location=" + location + ", batchSize=" + batchSize
			+ ", company=" + company + ", batchName=" + batchName + "]";
}


}