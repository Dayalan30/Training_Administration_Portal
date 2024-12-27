package tap.app.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import tap.app.entities.TraineeLogin;

public class TraineeLoginRowMapper implements RowMapper<TraineeLogin>{

	@Override
	public TraineeLogin mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		TraineeLogin trainerLogin=new TraineeLogin();
		trainerLogin.setPwdSalt(rs.getString("pwd_salt"));
		trainerLogin.setPwdHash(rs.getString("pwd_hash"));
		
		
		return trainerLogin;
	}

	
	
}
