package tap.app.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import tap.app.entities.AdminReg;

public class AdminRowMapper implements RowMapper<AdminReg> {

	@Override
	public AdminReg mapRow(ResultSet rs, int rowNum) throws SQLException {

		AdminReg adminReg = new AdminReg();
		adminReg.setId(rs.getInt("id"));
		adminReg.setFullName(rs.getString("fullName"));
		adminReg.setEmailId(rs.getString("emailId"));
		adminReg.setMobileNo(rs.getString("mobileNo"));
		adminReg.setDateOfBirth(rs.getDate("dateOfBirth"));
		adminReg.setGender(rs.getString("gender"));
		adminReg.setRootAdmin(rs.getBoolean("root_admin"));
		adminReg.setStatus(rs.getBoolean("status"));

		return adminReg;
	}

}
