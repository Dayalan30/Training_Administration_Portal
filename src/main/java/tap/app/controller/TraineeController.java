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
import tap.app.entities.FeedBack;
import tap.app.entities.Mcq;
import tap.app.entities.TableData;
import tap.app.entities.Trainee;
import tap.app.entities.TraineeAttendance;
import tap.app.entities.TraineeLogin;
import tap.app.entities.Trainer;
import tap.app.repository.AdminDao;
import tap.app.repository.McqDao;
import tap.app.repository.TraineeDao;
import tap.app.entities.TableData;
import tap.app.repository.TableDataDao;
import tap.app.utils.Utils;

@Controller
@RequestMapping("/trainee")
public class TraineeController {
	
@Autowired
TraineeDao traineeDao;
@Autowired
AdminDao adminDao;
@Autowired
TableDataDao tableDataDao;
@Autowired
McqDao mcqDao;
	@GetMapping("/openTraineeRegisterPage")
	public String openRegisterTraineePage() {
		return "register_trainee";
	}
	@GetMapping("/registerTrainee")
	public String handleRegisterTraineeRequest(
		
		@RequestParam("firstname")String firstName,
		@RequestParam("lastname")String lastName,
		@RequestParam("username")String userName,
		@RequestParam("password")String password,
		@RequestParam("emailId")String emailId,
		@RequestParam("company") String company,
		@RequestParam("course_name") String course,
		@RequestParam("dateofbirth")String dateOfBirth,
		@RequestParam("gender")String gender,
		@RequestParam("mobile")String mobileNo,
		@RequestParam("country")String country,
		@RequestParam("state")String state,
		@RequestParam("city")String city,
		@RequestParam("rfs")String rfs,
		Model model
        
				){

	Date dob=Date.valueOf(dateOfBirth);
	 Trainee  trainee=new Trainee(firstName,lastName, userName, password, emailId,company,course, dob, gender, mobileNo, country, state, city, rfs,"A",true);
	 
	 System.out.println(trainee);
		
		int result=traineeDao.insertTrainee(trainee);
		
		if(result==0) {
			return "failure";
			
		}else {
			model.addAttribute("message","Admin Has not approved! Your profile");
			return "login_trainee";
		}
	}
	
	@GetMapping("/openTraineeLoginPage")
	public String openTraineeLoginPage() {
		return "login_trainee";
	}
	@GetMapping("/loginTrainee")
	
	public String loginTrainee(
		
		@RequestParam("email")String emailId,
		@RequestParam("password")String password,
		HttpServletRequest request,Model model){
		
		System.out.println(emailId);
		System.out.println(password);
		
		TraineeLogin loginData=traineeDao.getPassword(emailId);
		 Trainee traineeProfile=traineeDao.getProfileTrainee(emailId);
        System.out.println("\n Login Data: "+ loginData);
    	HttpSession session=request.getSession();
		String newPwdHash=Utils.generatePasswordHash(loginData.getPwdSalt()+password);
	    String pwdHashDb=loginData.getPwdHash();

	System.out.println("\n newPwdHash: "+ newPwdHash);
	System.out.println("\n pwdHashDb: "+ pwdHashDb);

	if(newPwdHash.equals(pwdHashDb)&&traineeDao.getStatusOfTrainee(emailId).equals("A")) {
		session.setAttribute("ProfileTrainee", traineeProfile);
		 List<AssignDetails> assignList=traineeDao.getTrainerAssignTrainee(traineeProfile.getEmailId());
			System.out.println(assignList);
			model.addAttribute("AssignList",assignList);
		return "trainee_page";
	}else {
		return "failure";
	}
	}
	
	@GetMapping("/trainee_profile")
	public String openTraineeProfilePage(HttpSession session,  Model model) {
		Trainee traineeProfile=(Trainee)session.getAttribute("ProfileTrainee");
		System.out.println(traineeProfile);
		if(traineeProfile!=null) {
			System.out.println(traineeProfile);
			return "trainee_profile";
		}
		else {
			return "login_trainee";
		}
    
	}
	
	@GetMapping(value = "/showTraineesList")
	public String showTraineesList(Model model) {
		List<Trainee> traineesList = traineeDao.getViewOfTrainee();
		
		model.addAttribute("ViewOfTrainee", traineesList);
		
		return "list_trainee";
	}
	
	@GetMapping(value = "/showAddTraineeFormPage")
	public String showAddTraineeFormPage() {
		return "add_trainee";
	}
	
	@GetMapping("/addTrainee")
    public String addTrainee(@ModelAttribute Trainee trainee) {
       
        System.out.println("Received Trainee: " + trainee);
        
        int result = traineeDao.insertTrainee(trainee);
        
        if(result == 1) {
        	return "redirect:/trainee/showTraineesList";
        } else {
        	return "add_trainee";
        }
    }
	
	@GetMapping(value = "/showUpdateTraineeFormPage")
	public String showUpdateTraineeFormPage(
			@RequestParam("id") int id,
			Model model) {

		Trainee traineeToUpdate = traineeDao.getTrainee(id);
		System.out.println("------------------");
		System.out.println(traineeToUpdate);
		
		model.addAttribute("trainee", traineeToUpdate);
		
		return "update_trainee";
	}
	
	@PostMapping(value="/updateTrainee")
    public String updateTrainee(@ModelAttribute Trainee trainee) {
       
        System.out.println("Received Trainee: " + trainee);
        
        int result = traineeDao.updatepTrainee(trainee);
        
        if(result == 1) {
        	return "redirect:/trainee/showTraineesList";
        } else {
        	return "update_trainee";
        }
        
	}
	@GetMapping("/openTraineeUpdate")
	public String openTraineeUpdate(@RequestParam("id") String id,Model model)
	{
		System.out.println("Id : " + id);
		Trainee trainee=traineeDao.getId(Integer.parseInt(id));
		
		model.addAttribute("TraineeUpdate", trainee);
		
		return "trainee_update";
}
	
	
	@GetMapping("/updateTrainee")
	public String updateTrainee(@ModelAttribute Trainee trainee,Model model)
	{
		int result=traineeDao.updateTrainee(trainee);
		
		if(result==1) {
			return"redirect:trainee_profile";
		}else {
			return "failure";
		}
	}
	@GetMapping("/openTrainee")
	public String openTraineeAssignPage(@RequestParam("emailId")String traineeEmailId, Model model)
	{
		
		List<AssignDetails> assignList=traineeDao.getTrainerAssignTrainee(traineeEmailId);
		
		model.addAttribute("AssignList",assignList);
		
		return "trainer_assign_list";
	
	}
	
	
	@GetMapping("/displayTable")
    public String displayTable(@RequestParam("course")String trainerCourse,Model model) {
        List<TableData> tableDataList = tableDataDao.getAllTableData(trainerCourse);
        model.addAttribute("tableDataList", tableDataList);
        return "course_table";
    }
	@GetMapping("/feedback")
	public String openFeedBackPage(@RequestParam("traineeEmail")String traineeEmail,@RequestParam("trainerName")String trainerName,@RequestParam("trainerEmailId")String trainerEmailId,Model model) {
		System.out.println("Hi");
		model.addAttribute("traineeEmail", traineeEmail);
		model.addAttribute("trainerName",trainerName);
		model.addAttribute("trainerEmailId",trainerEmailId);
	
		 return "feedback";
	
}

	@GetMapping("/submitFeedback")
	public String openFeedback(@RequestParam("traineeEmail")String traineeEmail,@RequestParam("trainerName")String trainerName , @RequestParam("trainerEmailId")String trainerEmailId ,@RequestParam("feedbackText")String feedbacktext,
			@RequestParam("rating")int rating,@RequestParam("feedbackDate") String feedbackDate ){
		
		
		Date feedBackDate=Date.valueOf(feedbackDate);
		
		
		
		FeedBack feedback=new FeedBack(traineeEmail,trainerName,trainerEmailId,feedbacktext, rating, feedBackDate);
		
		int result=adminDao.insertFeedback(feedback);
		
		
	      if(result==0) {
	
		return "failure";}
	      else {
	    	  return "success";
	      }
		
	       
	       
}
	
	@GetMapping("/trainee_attendance")
	public String openAttedance(@RequestParam("emailId")String traineeEmailId,@RequestParam("firstName")String firstName,Model model) {
		
		model.addAttribute("traineeEmail", traineeEmailId);
		model.addAttribute("traineeFirstName",firstName);
		
		return "trainee_attendance";
		
	}
	@RequestMapping("/displayMcqQuestions")
    public String displayMcqQuestions(@RequestParam("course")String testCourse,@RequestParam("emailId")String traineeEmail,Model model) {
        List<Mcq> mcqList = mcqDao.getAllMcqQuestions(testCourse);
        model.addAttribute("mcqList", mcqList);
    	model.addAttribute("traineeEmail", traineeEmail);
    	System.out.print(traineeEmail);
        return "mcq";
    }


  
	@PostMapping("/mcqResult")
	public String handleTestResultRequest(@RequestParam("traineeEmail") String traineeEmail,
			@RequestParam("resultScore") String resultScore

	) {
		Mcq mcq = new Mcq(traineeEmail,resultScore);
		

		System.out.println(mcq);
		
		 int result=mcqDao.insertmcq(traineeEmail,resultScore);
		 
		 if(result==0) {
			 return "failure";
		 
		 }else { 
			 return "success"; 
		 }
		
		
	}

	@GetMapping("/updateAttendance")
	public String openUpdate(@RequestParam("emailId")String traineeEmailId,@RequestParam("firstName")String firstName,
			@RequestParam("attendance")String attendance,@RequestParam("attendanceDate") String attendanceDate) {
		   
		Date DateFill=Date.valueOf(attendanceDate);
		TraineeAttendance traineeAttendance=new TraineeAttendance(traineeEmailId, traineeEmailId,attendance, DateFill);
		
		int result=traineeDao.insertAttendance(traineeAttendance);
		if(result==0) {
			
			throw new DuplicateKeyException("");
			
		}
		return "success";
	}
	@GetMapping("/logout_trainee")
	public String Adminlogout(HttpSession session, Model model) {

		session.invalidate();
		return "login_trainee";

	}

	
}


	

