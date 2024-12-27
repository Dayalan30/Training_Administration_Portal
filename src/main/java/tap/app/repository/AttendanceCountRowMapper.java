package tap.app.repository;



import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import tap.app.entities.AttendanceCount;

public class AttendanceCountRowMapper implements RowMapper<AttendanceCount> {

	@Override
	public AttendanceCount mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		AttendanceCount obj=new AttendanceCount();
		obj.setId(rs.getInt("id"));
		obj.setCount(rs.getInt("count"));
		return obj;
	}

}
