package tap.app.repository;

import java.util.List;

import tap.app.entities.AssignDetails;
import tap.app.entities.AvgRating;
import tap.app.entities.TraineeAttendance;
import tap.app.entities.Trainer;
import tap.app.entities.TrainerAttendance;
import tap.app.entities.TrainerLogin;

public interface TrainerDao {

	int insertTrainer(Trainer trainer);

	TrainerLogin getPasswordData(String emailId);

	Trainer getProfileData(String emailId);

	int updateTrainer(Trainer trainer);

	Trainer getId(int id);

	List<Trainer> getViewOfTrainer();

	int revokeTrainer(int id);

	int grantTrainer(int id);

	String getStatusOfTrainer(String emailId);

	Trainer getTrainer(int trainerId);

	int updatepTrainer(Trainer trainer);
	List<TraineeAttendance> getActiveTrainer(String trainerEmailId);

	TrainerLogin getPassword(String emailId);

	List<Trainer> getListOfTrainer(String course_name);

	List<AssignDetails> getTraineeAssignTrainer(String traineeEmailId);
	
	int insertTrainerAttendance(TrainerAttendance trainerAttendance);
	
	int getRating(String trainerEmailId);
	
}
