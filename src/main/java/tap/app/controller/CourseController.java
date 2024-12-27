package tap.app.controller;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tap.app.entities.Assign;
import tap.app.entities.AssignDetails;
import tap.app.entities.Course;
import tap.app.entities.Trainee;
import tap.app.entities.Trainer;
import tap.app.repository.AdminDao;
import tap.app.repository.CourseDao;
import tap.app.repository.TraineeDao;
import tap.app.repository.TrainerDao;

@Controller
@RequestMapping(value = { "/course", "/courseView","/" })

public class CourseController {
	@Autowired
	CourseDao courseDao;
	@Autowired
    TrainerDao trainerDao;
	@Autowired
    TraineeDao traineeDao;
	@Autowired
	AdminDao adminDao;

	@GetMapping("/course_details")
	public String openCourseDetails() {
		return "course_details";
	}

	@GetMapping("/courseDetails")
	public String handleRegisterAdminRequest(
			 @RequestParam("company")String company,
			@RequestParam("course_name") String courseName, @RequestParam("trainerName") String trainerName,
			@RequestParam("startingDate") String startingDate, @RequestParam("endingDate") String endingDate,
			@RequestParam("location") String location,  @RequestParam("batchSize") int batchSize,@RequestParam("batchName") String batchName

	) {
		Date startDate = Date.valueOf(startingDate);
		Date endDate = Date.valueOf(endingDate);

		Course course = new Course(courseName, trainerName, startDate, endDate, location, 
				batchSize,company,batchName);

		System.out.println(course);

		int result = courseDao.insertCourse(course);
		if (result == 0) {
			return "failure";

		} else {
			return "success";
		}

	}

	@GetMapping("/openCourseViewPage")

	public String openCourseViewPage(Model model) {

		List<Course> courses = courseDao.getViewOfCourse();
		model.addAttribute("ViewOfCourse", courses);
//System.out.println(courses);
		return "course_view";

	}

	@GetMapping(value = "/showCoursesList")
	public String showCoursesList(Model model) {
		List<Course> coursesList = courseDao.getViewOfCourse();

		model.addAttribute("ViewOfCourse", coursesList);

		return "list_course";
	}

	@GetMapping(value = "/showAddCourseFormPage")
	public String showAddCourseFormPage() {
		return "add_course";
	}

	@GetMapping("/addCourse")
	public String addCourse(@ModelAttribute Course course) {

		System.out.println("Received Course: " + course);

		int result = courseDao.insertCourse(course);

		if (result == 1) {
			return "redirect:/course/showCoursesList";
		} else {
			return "add_course";
		}
	}

	@GetMapping(value = "/showUpdateCourseFormPage")
	public String showUpdateCourseFormPage(@RequestParam("id") int id, Model model) {

		Course courseToUpdate = courseDao.getCourse(id);
		System.out.println("------------------");
		System.out.println(courseToUpdate);

		model.addAttribute("course", courseToUpdate);

		return "update_course";
	}

	@PostMapping(value = "/updateCourse")
	public String updateCourse(@ModelAttribute Course course) {

		System.out.println("Received Course: " + course);

		int result = courseDao.updateCourse(course);

		if (result == 1) {
			return "redirect:/course/showCoursesList";
		} else {
			return "update_course";
		}

	}
	@GetMapping("/courseList")
	 public String handleCourseList(@RequestParam("course_name") String courseName,@RequestParam("batchName") String batchName,Model model) {
		     System.out.println(courseName);
		    List<Trainer> trainer = trainerDao.getListOfTrainer(courseName);
			List<Trainee>trainee=traineeDao.getListOfTrainee(courseName);
			List<Course>courses=courseDao.getViewOfCourse();
			System.out.println(trainer);
			System.out.println(trainee);
			model.addAttribute("course",courseName);
			model.addAttribute("ListOfTrainee",trainee);
			model.addAttribute("ListOfTrainer", trainer);
			model.addAttribute("ViewOfCourse",courses);
			model.addAttribute("batchName",batchName);
			System.out.println(batchName);
		 return "assign";
	 }

	@GetMapping("/Assign_page")
	public String handleAssignPart(@RequestParam("course_name") String courseName,@RequestParam("batchName") String batchName, Model model) {

		List<Trainer> trainer = trainerDao.getListOfTrainer(courseName);
		List<Trainee> trainee = traineeDao.getListOfTrainee(courseName);
		List<Course> courses = courseDao.getViewOfCourse();
		model.addAttribute("ListOfTrainee", trainee);
		model.addAttribute("ListOfTrainer", trainer);
		model.addAttribute("ViewOfCourse", courses);
		model.addAttribute("batchName",batchName);
		
		

		return "Assign_page";
	}@GetMapping("/course_assign")
		public String handleCourse( 
			@RequestParam("trainerName")String trainerFirstName,
			@RequestParam("trainerEmailId")String trainerEmailId,
			@RequestParam("traineeName")String traineeFirstName,
			@RequestParam("traineeEmailId")String traineeEmailId,
			@RequestParam("batchName") String batchName,
			Model model){

			
			Assign assign=new Assign(trainerFirstName, trainerEmailId, traineeFirstName, traineeEmailId,batchName);
			System.out.println(traineeFirstName);
			
			String[] traineeName = assign.getTraineeFirstName().split(",");
			String[] traineeEmail = assign.getTraineeEmailId().split(",");
			int result = 0;
			for(int i = 0;i<traineeName.length;i++) {
				result = adminDao.insertAssign(batchName,trainerFirstName,
						trainerEmailId, traineeName[i], traineeEmail[i]);
                        
			}
			System.out.println(batchName);
			if(result==1) {
      List<AssignDetails> assignList=adminDao.getJoin();
			model.addAttribute("AssignList", assignList);
			model.addAttribute("CourseList", assignList);
			return "redirect:/assign_list";
		}else {
			return "failure";
		}
			
			
	}
	@GetMapping("/openCheckAvail")
	public String OpenAssignList(@RequestParam("trainerEmailId")String trainerEmailId,@RequestParam("traineeEmailId")String traineeEmailId,Model model) {
		
		 
		
		
		adminDao.updateTrainerAvailability(trainerEmailId);
		
		adminDao.updateTraineeAvailability(traineeEmailId);
		
             return "redirect:/assign_list";
		
		}

	@GetMapping("/check_avail")
	public String openAvailCoure(Model model) {
		//adminDao.updateCourseStatus(Integer.parseInt(id));
		List<AssignDetails> assignList=adminDao.availCourseStatus();
		System.out.println(assignList);
		model.addAttribute("AssignList", assignList);
		model.addAttribute("CourseList", assignList);
		 return "check_avail";
		
	}
	@GetMapping("/compl_course")
	public String openComple(Model model) {
		
		List<AssignDetails> assignList=adminDao.completedCourseStatus();
		System.out.println(assignList);
		model.addAttribute("AssignList", assignList);
		model.addAttribute("CourseList", assignList);
		 return "compl_course";
		
	}
	
	
}


