package tap.app.repository;

import java.util.List;

import tap.app.entities.Course;

public interface CourseDao {
	int insertCourse(Course course);

	List<Course> getViewOfCourse();

	Course getCourse(int courseId);

	int updateCourse(Course course);
}
