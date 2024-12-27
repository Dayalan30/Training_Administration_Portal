package tap.app.controller;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tap.app.entities.Mcq;
import tap.app.entities.Trainee;
import tap.app.repository.McqDao;

@Controller
@RequestMapping("/mcq")
public class McqController {

	@Autowired
	McqDao mcqDao;

	@RequestMapping("/displayMcqQuestions")
	public String displayMcqQuestions(@RequestParam("tranieeEmail")String traineeEmail,Model model) {
		List<Mcq> mcqList = mcqDao.getAllMcqQuestions();
		model.addAttribute("mcqList", mcqList);
		model.addAttribute("traineeEmail", traineeEmail);
		
		return "mcq";
	}

	@PostMapping("/mcqResult")
	public String handleTestResultRequest(@RequestParam("traineeEmail") String traineeEmail,
			@RequestParam("resultScore") String resultScore

	) {
		Mcq mcq = new Mcq(traineeEmail,resultScore);
		

		System.out.println(mcq);
		/*
		 * int result=mcqDao.insertmcq(mcq);
		 * 
		 * if(result==0) { return "failure";
		 * 
		 * }else { return "success"; }
		 */
		return "success";
	}
}