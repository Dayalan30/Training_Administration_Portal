package tap.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tap.app.entities.Trainer;
import tap.app.repository.TrainerDao;


@Controller
@RequestMapping("/trainerView")

public class TrainerViewController {

	@Autowired
	TrainerDao trainerDao;
	@GetMapping("/trainer_view")
	public String openTrainerDetails(Model model) {
		
		List<Trainer>trainer=trainerDao.getViewOfTrainer();
		model.addAttribute("ViewOfTrainer",trainer);
		return "trainer_view";
	}
	
	@GetMapping("/revokeTrainer")
	public String openTrainerRevoke(@RequestParam("id") String id,Model model) {
		System.out.println("Id : " + id);
		int result=trainerDao.revokeTrainer(Integer.parseInt(id));
		
		if(result==1) {
		 return "trainer_revoke";
			}else {
				return "failure";
			}
	
	}
	@GetMapping("/grantTrainer")
	public String openTrainerGrant(@RequestParam("id") String id,Model model) {
		System.out.println("Id : " + id);
		int result=trainerDao.grantTrainer(Integer.parseInt(id));
		
		if(result==1) {
		 return "trainer_grant";
			}else {
				return "failure";
			}
}
}