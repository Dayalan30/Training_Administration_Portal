
package tap.app.repository;

import java.util.List;

import tap.app.entities.*;
public interface AdminDao {

	int insertAdmin(AdminReg adminReg);

	AdminLogin getPasswordData(String emailId);

	boolean getRootAdmin(String emailId);

	boolean getStatusAdmin(String emailId);

	List<AdminReg> getViewOfAdmin();

	AdminReg getProfileAdmin(String emailId);

	int grantAdmin(int id);

	int revokeAdmin(int id);

	List<AssignDetails> getJoin();

	

	int insertAssign(String batchName, String trainerFirstName, String trainerEmailId, String traineeFirstName,
			String traineeEmailId);

	int updateTrainerAvailability(String trainerEmailId);

	int updateTraineeAvailability(String traineeEmailId);

	List<AssignDetails> completedCourseStatus();

	List<AssignDetails> availCourseStatus();

	int insertFeedback(FeedBack feedback);

	//FeedBack filledFeedBack(String traineeEmailId);
//int updateTrainerAvailability(String trainerEmailId);
	
	int updateAdmin(AdminReg adminreg);
	
	AdminReg getId(int id);
	AdminReg getAdmin(int adminId);
	

     List<TraineeAttendance> getCountTraineeAttendance(String trainerEmailId);
       List<TraineeAttendance> getTraineeAttendance(String trainerEmailId);
    
    List<TrainerFeedBack> getTrainerFeedBackReport(String trainerEmailId);
    List<TrainerFeedBack> getAllTrainerFeedbackReport();
    
   // List<TraineeAttendance>getAllCountTraineeAttendance();
    
    List<TraineeAttendance>getAllTraineeAttendance();

	List<TraineeAttendance> getAllCountTraineeAttendance(String traineeEmailId);
	
	
	

	List<TrainerAttendance> getTrainerAttendance(String trainerEmailId);
}