package tap.app.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import tap.app.entities.FeedBack;

public class FeedBackRowMapper implements RowMapper<FeedBack> {

	@Override
	public FeedBack mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		FeedBack feedback=new FeedBack();
		feedback.setTraineeEmail(rs.getString("traineeEmail"));
		feedback.setFeedbackText(rs.getString("feedbackText"));
		feedback.setRating(rs.getInt("rating"));
		feedback.setFeedbackDate(rs.getDate("feedbackDate"));
	
		
		return feedback;
	}

}
