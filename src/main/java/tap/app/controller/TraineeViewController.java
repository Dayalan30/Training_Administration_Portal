package tap.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tap.app.entities.Trainee;
import tap.app.repository.TraineeDao;
//import tap.app.repository.TraineeViewDao;

@Controller
@RequestMapping("/traineeView")
public class TraineeViewController {
	@Autowired
	TraineeDao traineeDao;

	@GetMapping("/trainee_view")
	public String openViewTrainee(Model model) {
		List<Trainee> trainee = traineeDao.getViewOfTrainee();

		model.addAttribute("ViewOfTrainee", trainee);
		return "trainee_view";

	}

	@GetMapping("/revokeTrainee")
	public String openTrainerRevoke(@RequestParam("id") String id, Model model) {
		System.out.println("Id : " + id);
		int result = traineeDao.revokeTrainee(Integer.parseInt(id));

		if (result == 1) {
			return "trainee_revoke";
		} else {
			return "failure";
		}

	}

	@GetMapping("/grantTrainee")
	public String openTrainerGrant(@RequestParam("id") String id, Model model) {
		System.out.println("Id : " + id);
		int result = traineeDao.grantTrainee(Integer.parseInt(id));

		if (result == 1) {
			return "trainee_grant";
		} else {
			return "failure";
		}
	}

}
