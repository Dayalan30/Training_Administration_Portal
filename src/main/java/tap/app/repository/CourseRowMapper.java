package tap.app.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import tap.app.entities.Course;

public class CourseRowMapper implements RowMapper<Course> {

    @Override
	public Course mapRow(ResultSet rs, int rowNum) throws SQLException {
	 
		Course course=new Course();

	
		course.setId(rs.getInt("id"));
		course.setCourseName(rs.getString("course_name"));
		course.setTrainerName(rs.getString("trainerName"));
		course.setStartingDate(rs.getDate("startingDate"));
		course.setEndingDate(rs.getDate("endingDate"));
		course.setLocation(rs.getString("location"));
		
		course.setBatchSize(rs.getInt("batchSize"));
		course.setCompany(rs.getString("company"));
		course.setBatchName(rs.getString("batchName"));
	
		
		return course;
	}

	
}
