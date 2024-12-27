package tap.app.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import tap.app.entities.Trainer;
import tap.app.entities.TrainerLogin;

public class TrainerLoginRowMapper implements RowMapper<TrainerLogin> {

	@Override
	public TrainerLogin mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		TrainerLogin trainerLogin=new TrainerLogin();
		trainerLogin.setPwdSalt(rs.getString("pwd_salt"));
		trainerLogin.setPwdHash(rs.getString("pwd_hash"));
		
		return trainerLogin;
	}

}
