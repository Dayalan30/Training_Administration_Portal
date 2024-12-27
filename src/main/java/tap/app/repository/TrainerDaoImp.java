package tap.app.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import tap.app.entities.AssignDetails;
import tap.app.entities.AvgRating;
import tap.app.entities.TraineeAttendance;
import tap.app.entities.Trainer;
import tap.app.entities.TrainerAttendance;
import tap.app.entities.TrainerLogin;
import tap.app.utils.Utils;

public class TrainerDaoImp implements TrainerDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public int insertTrainer(Trainer trainer) {

		String INSERT_QUERY = "INSERT INTO trainer"
				+ "(firstName, lastName, emailId, mobileNo, dateOfBirth, course_name,status,pwd_salt,pwd_hash,availability,traineeCount,avgRating) "
				+ "VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";

		String pwdSalt = Utils.generatePasswordSalt(10);
		String newPassword = pwdSalt + trainer.getPassword();
		String pwdHash = Utils.generatePasswordHash(newPassword);

		System.out.println("\n Password= " + trainer.getPassword());
		System.out.println("\n Salt= " + pwdSalt);
		System.out.println("\n Hash " + pwdHash);
		boolean status = false;

		return jdbcTemplate.update(INSERT_QUERY, trainer.getFirstName(), trainer.getLastName(), trainer.getEmailId(),
				trainer.getMobileNo(), trainer.getDateOfBirth(), trainer.getLanguages(), status, pwdSalt, pwdHash,
				trainer.isAvailability(),trainer.getTraineeCount(),trainer.getAvgRating());

	}

	@Override
	public TrainerLogin getPasswordData(String emailId) {

		String GET_PASSWORD = "SELECT pwd_salt,pwd_hash FROM trainer WHERE emailId=?";

		return jdbcTemplate.queryForObject(GET_PASSWORD, new TrainerLoginRowMapper(), emailId);

	}

	@Override
	public Trainer getProfileData(String emailId) {
		System.out.println(emailId);
		String GET_PROFILE = "SELECT * FROM trainer WHERE emailId = ?";
		List<Trainer> result = jdbcTemplate.query(GET_PROFILE, new TrainerRowMapper(), emailId);

		if (result.size() == 0)
			return null;
		else
			return result.get(0);

	}

	@Override
	public int updateTrainer(Trainer trainer) {

		String GET_TRAINER = "UPDATE trainer " + "set firstName=?,lastName=?,"
				+ "emailId=?,mobileNo=?,dateOfBirth=?,course_name=? WHERE id=?";
		return jdbcTemplate.update(GET_TRAINER, trainer.getFirstName(), trainer.getLastName(), trainer.getEmailId(),
				trainer.getMobileNo(), trainer.getDateOfBirth(), trainer.getLanguages(), trainer.getId());
	}

	@Override
	public Trainer getId(int id) {
		String GET_TRAINEE = "SELECT * FROM trainer WHERE id=?";

		List<Trainer> trainerList = jdbcTemplate.query(GET_TRAINEE, new TrainerRowMapper(), id);
		if (trainerList.size() > 0)
			return trainerList.get(0);
		else
			return null;
	}

	@Override
	public List<Trainer> getViewOfTrainer() {

		List<Trainer> trainerList = new ArrayList<Trainer>();

		String GET_TRAINER = "SELECT * FROM trainer";

		trainerList = jdbcTemplate.query(GET_TRAINER, new TrainerRowMapper());
		return trainerList;
	}

	@Override
	public int revokeTrainer(int id) {

		String UPDATE_REVOKE = "UPDATE trainer SET status='N' WHERE id=?";
		return jdbcTemplate.update(UPDATE_REVOKE, id);
	}

	@Override
	public int grantTrainer(int id) {
		String UPDATE_GRANT = "UPDATE trainer SET status='A' WHERE id=?";
		return jdbcTemplate.update(UPDATE_GRANT, id);
	}

	@Override
	public String getStatusOfTrainer(String emailId) {

		String GET_STATUS = "SELECT * FROM trainer WHERE emailId=?";

		return jdbcTemplate.query(GET_STATUS, new TrainerRowMapper(), emailId).get(0).getStatus();

	}

	@Override
	public Trainer getTrainer(int TrainerId) {
		String getTrainerQuery = "SELECT * FROM Trainer WHERE id = ?";

		return jdbcTemplate.queryForObject(getTrainerQuery, new TrainerRowMapper(), TrainerId);
	}

	@Override
	public int updatepTrainer(Trainer Trainer) {
		String insertQuery = "UPDATE Trainer SET "
				+ "firstName = ?, lastName = ?, emailId = ?,mobileNo = ?, dateOfBirth = ?,pwd_salt = ?,pwd_hash = ? ,course_name=?"
				+ " WHERE id = ?";

		String pwdSalt = Utils.generatePasswordSalt(10);
		String newPassword = pwdSalt + Trainer.getPassword();
		String pwdHash = Utils.generatePasswordHash(newPassword);

		System.out.println("\n Password= " + Trainer.getPassword());
		System.out.println("\n Salt= " + pwdSalt);
		System.out.println("\n Hash " + pwdHash);

		return jdbcTemplate.update(insertQuery, Trainer.getFirstName(), Trainer.getLastName(), Trainer.getEmailId(),
				Trainer.getMobileNo(), Trainer.getDateOfBirth(), pwdSalt, pwdHash, Trainer.getLanguages(),
				Trainer.getId());
	}

	@Override
	public TrainerLogin getPassword(String emailId) {
		String GET_PASSWORD = "SELECT pwd_salt,pwd_hash FROM Trainer WHERE emailId=?";

		return jdbcTemplate.queryForObject(GET_PASSWORD, new TrainerLoginRowMapper(), emailId);

	}
	
	@Override
	public List<Trainer> getListOfTrainer(String languages) {
		System.out.println(languages);
		String GET_LIST = "SELECT * FROM trainer WHERE availability=? and course_name=?";
		return jdbcTemplate.query(GET_LIST, new TrainerRowMapper(), 1, languages);

	}
	@Override
	public List<AssignDetails> getTraineeAssignTrainer(String trainerEmailId) {
		String GET_TRAINEE_ASSIGN="SELECT * FROM assign JOIN coursedetails ON assign.batchName = coursedetails.batchName"
				+ " WHERE assign.trainerEmailId=? AND coursedetails.endingDate >= CURDATE()";
		return jdbcTemplate.query(GET_TRAINEE_ASSIGN, new AssignDetailsRowMapper(),trainerEmailId );
	}

	@Override
	public int insertTrainerAttendance(TrainerAttendance trainerAttendance) {
		String GET_TRAINER_ATTENDANCE="INSERT INTO trainerattendance (firstName,emailId,attendance,attendanceDate)"
				+ " SELECT ?,?,?,? WHERE NOT EXISTS ("
				+ "	SELECT 1 "
				+ "	 FROM trainerattendance "
				+ "	 WHERE emailId =? AND attendanceDate=?)LIMIT 1";
				
		return jdbcTemplate.update(GET_TRAINER_ATTENDANCE,trainerAttendance.getTrainerName(),trainerAttendance.getTrainerEmailId(),trainerAttendance.getAttendance(),trainerAttendance.getAttendanceDate(),trainerAttendance.getTrainerEmailId(),trainerAttendance.getAttendanceDate());
	}

	@Override
	public List<TraineeAttendance> getActiveTrainer(String traineeEmailId) {
		String GET_ACTIVE_TRAINEE="SELECT * FROM assign JOIN coursedetails ON assign.batchName = coursedetails.batchName"
				+ " WHERE assign.trainerEmailId=? AND coursedetails.endingDate >CURDATE()";
		return jdbcTemplate.query(GET_ACTIVE_TRAINEE, new TraineeAttendanceRowMapper(),traineeEmailId );
		
	}

	@Override
	public int  getRating(String trainerEmailId) {
		String GET_AVG_RATING="UPDATE trainer t\r\n"
				+ "JOIN (\r\n"
				+ "    SELECT trainerEmailId, AVG(rating) AS avgRating\r\n"
				+ "    FROM feedback\r\n"
				+ "    GROUP BY trainerEmailId\r\n"
				+ ") AS feedback_avg ON t.emailId = feedback_avg.trainerEmailId\r\n"
				+ "SET t.avgRating = feedback_avg.avgRating\r\n"
				+ "WHERE t.emailId = ?";
		return jdbcTemplate.update(GET_AVG_RATING, trainerEmailId);
	
	}
}