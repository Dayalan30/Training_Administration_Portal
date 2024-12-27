package tap.app.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import tap.app.entities.TraineeAttendance;

public class AttendanceRowMapper implements RowMapper<TraineeAttendance> {

	@Override
	public TraineeAttendance mapRow(ResultSet rs, int rowNum) throws SQLException {
		// `id`, `firstName`, `emailId`, `attendance`, `attendanceDate`, `trainee_id`
		TraineeAttendance attendance=new TraineeAttendance();
		attendance.setId(rs.getInt("id"));
		attendance.setTraineeName(rs.getString("firstName"));
		attendance.setTraineeEmailId(rs.getString("emailId"));
		attendance.setAttendance(rs.getString("attendance"));
		attendance.setAttendanceDate(rs.getDate("attendanceDate"));
		
		return attendance;
	}

}
