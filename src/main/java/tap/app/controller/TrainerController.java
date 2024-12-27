package tap.app.controller;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tap.app.entities.AssignDetails;
import tap.app.entities.AvgRating;
import tap.app.entities.TableData;
import tap.app.entities.TraineeAttendance;
import tap.app.entities.Trainer;
import tap.app.entities.TrainerAttendance;
import tap.app.entities.TrainerFeedBack;
import tap.app.entities.TrainerLogin;
import tap.app.repository.AdminDao;
import tap.app.repository.TableDataDao;
import tap.app.repository.TrainerDao;
import tap.app.utils.Utils;


@Controller
@RequestMapping("/trainer")
public class TrainerController {

	
	@Autowired
	TrainerDao trainerDao;
	@Autowired
	TableDataDao tableDataDao;
	@Autowired
	AdminDao adminDao;
	
	
	@GetMapping("/openTrainerRegisterPage")
	public String openRegisterTrainerPage() {
		return "register_trainer";
	}
	
	@GetMapping("/registerTrainer")
	public String handleRegisterTrainerRequest(

		@RequestParam("firstname")String firstName,
		@RequestParam("lastname")String lastName,
		@RequestParam("email")String emailId,
		@RequestParam("password")String password,
		@RequestParam("mobile")String mobileNo,
		@RequestParam("dateofbirth")String dateOfBirth,
		@RequestParam("language")String languages,
		Model model
				){

	Date dob=Date.valueOf(dateOfBirth);
	 Trainer  trainer=new Trainer(firstName, lastName, emailId, password, mobileNo, dob, languages,"A",true,0,0.0);
	 Trainer profileData=trainerDao.getProfileData(emailId);
	 System.out.println(profileData);
	 System.out.println(trainer);
		
	
		int result=trainerDao.insertTrainer(trainer);
		
		if(result==0) {
			return "failure";
			
		}else {
			model.addAttribute("message","Admin Has not approved! Your profile");
			return "login_trainer";
		}
	}
	@GetMapping("/openTrainerLoginPage")
	public String openTrainerLoginPage() {
		return "login_trainer";
	}

	@GetMapping("/loginTrainer")
		public String loginTrainer(
			@RequestParam("email")String emailId,
			@RequestParam("password")String password,
			 HttpServletRequest request){
			
			System.out.println(emailId);
			System.out.println(password);
			
			HttpSession session=request.getSession();
			
	 TrainerLogin loginData=trainerDao.getPasswordData(emailId);

	 Trainer trainerProfile=trainerDao.getProfileData(emailId);
	 //System.out.println("\n Login Data: "+ loginData);
		
	
	 
		String newPwdHash=Utils.generatePasswordHash(loginData.getPwdSalt()+password);
	    String pwdHashDb=loginData.getPwdHash();
        
	
	   
	System.out.println("\n newPwdHash: "+ newPwdHash);
	System.out.println("\n pwdHashDb: "+ pwdHashDb);


	if(newPwdHash.equals(pwdHashDb)&&trainerDao.getStatusOfTrainer(emailId).equals("A")) {
		session.setAttribute("ProfileTrainer", trainerProfile);
	
		return "trainer_page";
	}else {
		return "login_trainer";
	}
	
	
	
	}
	

	@GetMapping("/trainer_profile")
	public String openTrainerProfilePage(HttpSession session,  Model model) {
		Trainer trainerProfile=(Trainer)session.getAttribute("ProfileTrainer");
		System.out.println(trainerProfile);
		if(trainerProfile!=null) {
			System.out.println(trainerProfile);
			return "trainer_profile";
		}
		else {
			return "login_trainer";
		}
    
	}
	@GetMapping("/openTrainerUpdate")
	public String openTrainerUpdate(@RequestParam("id") String id,Model model)
	{
		System.out.println("Id : " + id);
		Trainer trainer=trainerDao.getId(Integer.parseInt(id));
		
		model.addAttribute("TrainerUpdate", trainer);
		
		return "trainer_update";
}
	@GetMapping("/updateTrainer")
	public String updateTrainer(@ModelAttribute Trainer trainer,Model model)
	{
		int result=trainerDao.updateTrainer(trainer);
		
		if(result==1) {
			return"redirect:trainer_profile";
		}else {
			return "failure";
		}
	}
	
	@GetMapping(value = "/showTrainersList")
	public String showTrainersList(Model model) {
		List<Trainer> trainersList = trainerDao.getViewOfTrainer();
		
		model.addAttribute("ViewOfTrainer", trainersList);
		
		return "list_trainer";
	}
	
	@GetMapping(value = "/showAddTrainerFormPage")
	public String showAddTrainerFormPage() {
		return "add_trainer";
	}
	
	@GetMapping("/addTrainer")
    public String addTrainer(@ModelAttribute Trainer trainer) {
       
        System.out.println("Received Trainer: " + trainer);
        
        int result = trainerDao.insertTrainer(trainer);
        
        if(result == 1) {
        	return "redirect:/trainer/showTrainersList";
        } else {
        	return "add_trainer";
        }
    }
	
	@GetMapping(value = "/showUpdateTrainerFormPage")
	public String showUpdateTrainerFormPage(
			@RequestParam("id") int id,
			
			Model model) {

		Trainer trainerToUpdate = trainerDao.getTrainer(id);
		System.out.println("------------------");
		System.out.println(trainerToUpdate);
		
		model.addAttribute("trainer", trainerToUpdate);
		
		return "update_trainer";
	}
	
	@PostMapping(value="/updateTrainer")
    public String updateTrainer(@ModelAttribute Trainer trainer) {
       
        System.out.println("Received Trainer: " + trainer);
        
        int result = trainerDao.updateTrainer(trainer);
        
        if(result == 1) {
        	return "redirect:/trainer/showTrainersList";
        } else {
        	return "update_trainer";
        }
        
    }
	@GetMapping("/openTraineeAssign")
	public String openTraineeAssignPage(@RequestParam("emailId")String trainerEmailId, Model model)
	{
		
		List<AssignDetails> assignList=trainerDao.getTraineeAssignTrainer(trainerEmailId);
		
		model.addAttribute("AssignList",assignList);
		
		return "trainee_assign_list";
	
	}
	
	 @GetMapping("/displayTable")
	    public String displayTable(@RequestParam("course")String trainerCourse,Model model) {
	        List<TableData> tableDataList = tableDataDao.getAllTableData(trainerCourse);
	        model.addAttribute("tableDataList", tableDataList);
	        return "course_table";
	    }
	
	

		@GetMapping("/openTraineeAttendance")
		public String openTraineeAttendanceCount(@RequestParam("emailId")String trainerEmailId,Model model)
		
		{
			List<AssignDetails> assignList=trainerDao.getTraineeAssignTrainer(trainerEmailId);
			
			model.addAttribute("AssignList",assignList);
			
			List<TraineeAttendance>traineeAttendance=adminDao.getCountTraineeAttendance(trainerEmailId);
			
			model.addAttribute("TraineeAttendance",traineeAttendance);
			
			return "trainee_attendance_count";
		}
		
		@GetMapping("/openTraineeAttendanceReport")
		public String openTraineeAttendanceReport(@RequestParam("emailId")String traineeEmailId,Model model)
		{
			List<TraineeAttendance>traineeAttendance=adminDao.getTraineeAttendance(traineeEmailId);
			
			model.addAttribute("TraineeAttendance",traineeAttendance);
			
			return "trainee_attendance_report";
		}
		@GetMapping("/openTrainerFeedbackReport")
		public String openTrainerFeedbackReport(@RequestParam("trainerEmail") String trainerEmail,Model model) {
			
			List<TrainerFeedBack>feedBack=adminDao.getTrainerFeedBackReport(trainerEmail);
			
			model.addAttribute("TrainerFeedBack", feedBack);

			int trainerFeedBack=trainerDao.getRating(trainerEmail);
			model.addAttribute("TrainerFeedBackRating",trainerFeedBack);
			System.out.println(trainerFeedBack);
			
			Trainer trainer=trainerDao.getProfileData(trainerEmail);
			model.addAttribute("TrainerUpdateFeedBackRating",trainer);
		System.out.println(trainer);
			return "trainer_feedback_report";

	}
		
		@GetMapping("/trainer_attendance_form")
		public String openAttedance(@RequestParam("emailId")String trainerEmailId,@RequestParam("firstName")String firstName,Model model) {
			
			model.addAttribute("trainerEmail", trainerEmailId);
			model.addAttribute("trainerFirstName",firstName);
			
			return "trainer_attendance_form";
			
		}
		
		@GetMapping("/updateTrainerAttendance")
		public String openUpdate(@RequestParam("emailId")String trainerEmailId,@RequestParam("firstName")String firstName,
				@RequestParam("attendance")String attendance,@RequestParam("attendanceDate") String attendanceDate) {
			   
			Date DateFill=Date.valueOf(attendanceDate);
			TrainerAttendance trainerAttendance=new TrainerAttendance(trainerEmailId, trainerEmailId,attendance, DateFill);
			
			int result=trainerDao.insertTrainerAttendance(trainerAttendance);
			System.out.println(result);
			if(result==0) {
				
				throw new DuplicateKeyException("");
				
			}
			return "success";
			
			
		}
		
		@GetMapping("/logout_trainer")
		public String Adminlogout(HttpSession session, Model model) {

			session.invalidate();
			return "login_trainer";

		}

	}
