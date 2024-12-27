package tap.app.repository;

import java.sql.ResultSet;
import java.sql.SQLException;


import org.springframework.jdbc.core.RowMapper;

import tap.app.entities.Assign;

public class AssignRowMapper implements RowMapper<Assign>{

	@Override
	public Assign mapRow(ResultSet rs, int rowNum) throws SQLException {
	
	Assign assign=new Assign();	
	
	assign.setTraineeFirstName(rs.getString("trainerName"));
	assign.setTrainerEmailId(rs.getString("trainerEmailId"));
	assign.setTraineeFirstName(rs.getString("traineeName"));
	assign.setTraineeEmailId(rs.getString("traineeEmailId"));
	assign.setStartingDate(rs.getDate("startingDate"));
	assign.setEndingDate(rs.getDate("endingDate"));
	assign.setCompany(rs.getString("company"));
	assign.setCourseName(rs.getString("course_name"));
	assign.setLocation(rs.getString("location"));
	
	
		return assign;
	}

}
