package tap.app.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import tap.app.entities.Course;

public class CourseDaoImp implements CourseDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public int insertCourse(Course course) {
		String batchName = generateBatchName(course);

		String INSERT_COURSE = "INSERT INTO coursedetails"
				+ "(company,course_name ,trainerName, startingDate, endingDate, location,"
				+ " batchSize,batchName)" + "VALUES(?,?,?,?,?,?,?,?)";

		return jdbcTemplate.update(INSERT_COURSE, course.getCompany(), course.getCourseName(), course.getTrainerName(),
				course.getStartingDate(), course.getEndingDate(), course.getLocation(), course.getBatchSize(), batchName);
	}

	@Override
	public List<Course> getViewOfCourse() {
		List<Course> courseList = new ArrayList<Course>();

		String GET_COURSES = "SELECT * FROM coursedetails";

		courseList = jdbcTemplate.query(GET_COURSES, new CourseRowMapper());
		return courseList;
	}

	@Override
	public Course getCourse(int courseId) {
		String getCourseQuery = "SELECT * FROM coursedetails WHERE id = ?";

		return jdbcTemplate.queryForObject(getCourseQuery, new CourseRowMapper(), courseId);
	}

	@Override
	public int updateCourse(Course course) {
		String batchName = "B" + course.getId() + "_" + course.getCompany() + "_" + course.getCourseName();
		String insertQuery = "UPDATE coursedetails SET "
				+ "company = ?,course_name = ?, trainerName = ?, startingDate = ?, endingDate = ?, location = ?, "
				+ "batchSize = ? ,batchName = ?"
				+ "WHERE id = ?";

		return jdbcTemplate.update(insertQuery, course.getCompany(), course.getCourseName(), course.getTrainerName(),
				course.getStartingDate(), course.getEndingDate(), course.getLocation(),course.getBatchSize(), batchName, course.getId());
	}

	private String generateBatchName(Course course) {

		String sql = "SELECT MAX(id) FROM coursedetails";
		int latestId = jdbcTemplate.queryForObject(sql, Integer.class);

		if (latestId == 0) {
			latestId = 1;
		}

		return "B" + latestId + "_" + course.getCompany() + "_" + course.getCourseName();
	}

}