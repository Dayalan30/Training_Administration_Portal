package tap.app.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import tap.app.entities.Assign;
import tap.app.entities.AssignDetails;
import tap.app.entities.Course;

public class AssignDetailsRowMapper implements RowMapper<AssignDetails> {

	@Override
	public AssignDetails mapRow(ResultSet rs, int rowNum) throws SQLException {

		Assign assign = new Assign();
		Course course = new Course();

		course.setBatchName(rs.getString("batchName"));
		assign.setTrainerFirstname(rs.getString("trainerName"));
		assign.setTrainerEmailId(rs.getString("trainerEmailId"));
		assign.setTraineeFirstName(rs.getString("traineeName"));
		assign.setTraineeEmailId(rs.getString("traineeEmailId"));
		course.setStartingDate(rs.getDate("startingDate"));
		course.setEndingDate(rs.getDate("endingDate"));
		course.setCompany(rs.getString("company"));
		course.setCourseName(rs.getString("course_name"));
		course.setLocation(rs.getString("location"));
		
         course.setId(rs.getInt("id"));
		return new AssignDetails(assign, course);
	}

}
