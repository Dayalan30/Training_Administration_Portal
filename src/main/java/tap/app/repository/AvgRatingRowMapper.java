package tap.app.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import tap.app.entities.AvgRating;

public class AvgRatingRowMapper implements RowMapper<AvgRating> {

	@Override
	public AvgRating mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		AvgRating avgRating=new AvgRating();
		
		avgRating.setAvgRating(rs.getDouble("avgRating"));
		
		avgRating.setEmailId(rs.getString("trainerEmail"));
		
		return avgRating;
	}

}
