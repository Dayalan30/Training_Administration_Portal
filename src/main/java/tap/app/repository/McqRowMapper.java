package tap.app.repository;


import org.springframework.jdbc.core.RowMapper;


import java.sql.ResultSet;
import java.sql.SQLException;


import tap.app.entities.Mcq;

    public  class McqRowMapper implements RowMapper<Mcq> {
        @Override
        public Mcq mapRow(ResultSet rs, int rowNum) throws SQLException {
            Mcq mcq = new Mcq();
            mcq.setCourseName(rs.getString("course_name"));
            mcq.setWeek(rs.getInt("week"));
            mcq.setQuestionNo(rs.getInt("questionNo"));
            mcq.setQuestion(rs.getString("question"));
            mcq.setOption1(rs.getString("option1"));
            mcq.setOption2(rs.getString("option2"));
            mcq.setOption3(rs.getString("option3"));
            mcq.setOption4(rs.getString("option4"));
            mcq.setCorrectAnswer(rs.getString("correct_answer"));
            return mcq;
        }
    }


