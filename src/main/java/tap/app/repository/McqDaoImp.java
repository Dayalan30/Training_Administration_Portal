package tap.app.repository;

import java.sql.ResultSet;
import java.util.List;

import javax.swing.tree.RowMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import tap.app.entities.Mcq;
import tap.app.utils.Utils;

public class McqDaoImp implements McqDao {
	
	
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	

    @Override
    public List<Mcq> getAllMcqQuestions(String mcqCourse) {
    	
        String sql = "SELECT * FROM mcq where course_name = ?";
        return jdbcTemplate.query(sql, new McqRowMapper(),mcqCourse);
    }

    @Override
    public List<Mcq> getAllMcqQuestions() {
        String sql = "SELECT * FROM mcq where course_name = 'C'";
        return jdbcTemplate.query(sql, new McqRowMapper());
    }
	 @Override
	    public int insertmcq(String traineeEmail, String resultScore) {
	        String sql = "UPDATE assign SET testScore = ? WHERE traineeEmailId = ? LIMIT 1";
	        return jdbcTemplate.update(sql, resultScore, traineeEmail);
	    }



}


