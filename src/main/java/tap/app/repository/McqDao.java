package tap.app.repository;

import java.util.List;

import tap.app.entities.Mcq;

public interface McqDao {
	List<Mcq> getAllMcqQuestions();

	List<Mcq> getAllMcqQuestions(String testCourse);

	

	int insertmcq(String traineeEmail, String resultScore);

}
