package tap.app.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import tap.app.entities.Assign;
import tap.app.entities.TraineeAttendance;
import tap.app.entities.TrainerAttendance;

public class TrainerAttendanceRowMapper implements RowMapper<TrainerAttendance> {

	@Override
	public TrainerAttendance mapRow(ResultSet rs, int rowNum) throws SQLException {
		TrainerAttendance trainerAttendance=new TrainerAttendance();
		Assign assign=new Assign();
		trainerAttendance.setTrainerName(rs.getString("firstName"));
		trainerAttendance.setTrainerEmailId(rs.getString("emailId"));
		trainerAttendance.setAttendance(rs.getString("attendance"));
		trainerAttendance.setAttendanceDate(rs.getDate("attendanceDate"));	

		return trainerAttendance;
		
		 
	}

}
