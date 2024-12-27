package tap.app.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import tap.app.entities.Assign;

import tap.app.entities.TraineeAttendance;

public class TraineeAttendanceRowMapper implements RowMapper<TraineeAttendance>{

	@Override
	public TraineeAttendance mapRow(ResultSet rs, int rowNum) throws SQLException {
	
		TraineeAttendance traineeAttendance=new TraineeAttendance();
		 Assign assign=new Assign();
		 traineeAttendance.setTraineeName(rs.getString("traineeName"));
		 traineeAttendance.setTraineeEmailId(rs.getString("traineeEmailId"));
		traineeAttendance.setAttendance(rs.getString("attendance"));
		traineeAttendance.setAttendanceDate(rs.getDate("attendanceDate"));
		
		assign.setTrainerFirstname(rs.getString("trainerName"));
		assign.setTrainerEmailId(rs.getString("trainerEmailId"));
		assign.setBatchName(rs.getString("batchName"));
		
		 return new TraineeAttendance(traineeAttendance.getTraineeName(),traineeAttendance.getTraineeEmailId(),
				 traineeAttendance.getAttendance(),traineeAttendance.getAttendanceDate(),assign);
	}
	
	

}
