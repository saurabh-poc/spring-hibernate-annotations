package practice.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import practice.model.RegistrationModel;

@Controller
@RequestMapping(value = "/registration")
public class RegistrationController {
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView showRegistrationJsp(@ModelAttribute("regisModel") RegistrationModel registrationModel) {
		
		//return new ModelAndView("Registration", "regis", new RegistrationModel()); // using commandName = "regis" in form
		
		Map<String, Object> model = new HashMap<String, Object>();
		registrationModel.setState("Madhya Pradesh");
		model.put("regisModel", registrationModel);
		
		List<String> stateList = new ArrayList<String>();
		stateList.add(0, "Uttar Pradesh");
		stateList.add(1, "Madhya Pradesh");
		stateList.add(2, "Bihar");
		
		model.put("stateList", stateList);
		
		
		List<String> universityList = new ArrayList<String>();
		universityList.add(0, "MIT");
		universityList.add(1, "IIT");
		universityList.add(2, "NIT");
		
		model.put("universityList", universityList);
		
		Map<String, Map<String, Object>> modelForView = new HashMap<String, Map<String, Object>>();
		modelForView.put("vars", model);
		
		return new ModelAndView("Registration", modelForView);
	}
}
