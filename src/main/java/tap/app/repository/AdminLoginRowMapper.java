package tap.app.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import tap.app.entities.AdminLogin;

public class AdminLoginRowMapper implements RowMapper<AdminLogin> {
     @Override
	public AdminLogin mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		AdminLogin adminLogin=new AdminLogin();
		adminLogin.setPwdHash(rs.getString("pwd_hash"));
		adminLogin.setPwdSalt(rs.getString("pwd_salt"));
		return adminLogin;
		
	}

}

