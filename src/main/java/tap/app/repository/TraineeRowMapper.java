package tap.app.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import tap.app.entities.Trainee;

public class TraineeRowMapper implements RowMapper<Trainee> {

	@Override
	public Trainee mapRow(ResultSet rs, int rowNum) throws SQLException {
		Trainee trainee = new Trainee();
		trainee.setId(rs.getInt("id"));
		trainee.setFirstName(rs.getString("firstName"));
		trainee.setLastName(rs.getString("lastName"));
		trainee.setUserName(rs.getString("userName"));
		trainee.setEmailId(rs.getString("emailId"));
		trainee.setMobileNo(rs.getString("mobile"));
		trainee.setDateOfBirth(rs.getDate("dateOfBirth"));
		trainee.setMobileNo(rs.getString("mobile"));
		trainee.setGender(rs.getString("gender"));
		trainee.setCountry(rs.getString("country"));
		trainee.setState(rs.getString("state"));
		trainee.setCity(rs.getString("city"));
		trainee.setRfs(rs.getString("rfs"));
		trainee.setStatus(rs.getString("status"));
		trainee.setCourse(rs.getString("course_name"));
		trainee.setAssigned(rs.getBoolean("assigned"));
		return trainee;
	}
}
