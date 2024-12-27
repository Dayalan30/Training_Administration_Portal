package tap.app.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import tap.app.entities.AssignDetails;
import tap.app.entities.FeedBack;
import tap.app.entities.Trainer;
import tap.app.entities.TrainerFeedBack;

public class TrainerFeedBackRowMapper implements RowMapper<TrainerFeedBack> {

	@Override
	public TrainerFeedBack mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		
		FeedBack feedback=new FeedBack();
		Trainer trainer=new Trainer();
		trainer.setFirstName(rs.getString("trainerFirstName"));
		trainer.setEmailId(rs.getString("trainerEmail"));
		feedback.setFeedbackText(rs.getString("feedbackText"));
		feedback.setRating(rs.getInt("rating"));
		feedback.setFeedbackDate(rs.getDate("feedBackDate"));
		
		return new TrainerFeedBack(feedback,trainer);
		
		
	}

}
