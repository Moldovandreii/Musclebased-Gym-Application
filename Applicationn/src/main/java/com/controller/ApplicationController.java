package com.controller	;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.model.User;
import com.services.ExerciseService;
import com.services.UserService;

@Controller
@ComponentScan(basePackages = { "com" })
public class ApplicationController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private ExerciseService exerciseService;
	
	@ResponseBody
	@RequestMapping("/home")
	public String hello() {  	
		return "Hello From Spring";   
	}  
	
	
	@RequestMapping("/welcome")
	public String Welcome(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "welcomepage";
	}
	
	@RequestMapping("/register")
	public String Register(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGISTER");
		return "welcomepage";
	}
	
	@PostMapping("save-user")
	public String RegisterUser(@ModelAttribute User user, BindingResult bindingResult, HttpServletRequest request) {
		userService.saveMyUser(user);
		request.setAttribute("mode", "MODE_HOME");
		return "welcomepage";
	}
	
	@GetMapping("/show-users")
	public String ShowAllUsers(HttpServletRequest request) {
		request.setAttribute("users", userService.showAllUsers());
		request.setAttribute("mode", "ALL_USERS");
		return "welcomepage";
	}
	
	@RequestMapping("/delete-user")
	public String DeleteUser(@RequestParam int id, HttpServletRequest request) {
		userService.deleteUser(id);
		request.setAttribute("users", userService.showAllUsers());
		request.setAttribute("mode", "ALL_USERS");
		return "welcomepage";
	}
	
	@RequestMapping("/edit-user")
	public String EditUser(@RequestParam int id, HttpServletRequest request) {  
		request.setAttribute("user", userService.editUser(id));
		request.setAttribute("mode", "MODE_UPDATE");
		return "welcomepage"; 
	}
	
	@RequestMapping("/login")
	public String login(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_LOGIN");
		return "welcomepage";
	}
	
	@RequestMapping("login-user")
	public String loginUser(@ModelAttribute User user, HttpServletRequest request) {
		if(userService.findByUsernameAndPassword(user.getUsername(), user.getPassword()) != null)
		{
			return "homepage";
		}
		else {
			request.setAttribute("error", "Invalid Username or Password");
			request.setAttribute("mode", "MODE_LOGIN");
			return "welcomepage";
		}	
	}
	
	@GetMapping("/show-exercises")
	public String showExercises(HttpServletRequest request) {
		request.setAttribute("exercises", exerciseService.showAllExercises());
		request.setAttribute("mode", "ALL_EXERCISES");
		return "welcomepage";
	}
	
	@PostMapping("search-exercise")
	public RedirectView searchExercises(RedirectAttributes attributes, String number) {
		//attributes.addFlashAttribute("flashAttribute", "redirectWithRedirectView");
        attributes.addAttribute("attribute", "redirectWithRedirectView");
		return new RedirectView(number);
	}
	
	
	@RequestMapping("/muscle-groups")
	private String showMuscleGroups(HttpServletRequest request) {
		request.setAttribute("mode", "MUSCLE_GROUPS");
		return "welcomepage";
	}
	
	@RequestMapping("/6")
	private String showSkullcrusher(HttpServletRequest request) {
		request.setAttribute("mode", "SKULLCRUSHER");
		return "exercises";
	}
	
	@RequestMapping("/9")
	private String showBarbellCurls(HttpServletRequest request) {
		request.setAttribute("mode", "BARBELLCURLS");
		return "exercises";
	}
	
	@RequestMapping("/1")
	private String showBenchPress(HttpServletRequest request) {
		request.setAttribute("mode", "BENCHPRESS");
		return "exercises";
	}
	
	@RequestMapping("/19")
	private String showCableFlyes(HttpServletRequest request) {
		request.setAttribute("mode", "CABLEFLYES");
		return "exercises";
	}
	
	@RequestMapping("/2")
	private String showDeadlift(HttpServletRequest request) {
		request.setAttribute("mode", "DEADLIFT");
		return "exercises";
	}
	
	@RequestMapping("/14")
	private String showDips(HttpServletRequest request) {
		request.setAttribute("mode", "DIPS");
		return "exercises";
	}
	
	@RequestMapping("/16")
	private String showDumbbellFlyes(HttpServletRequest request) {
		request.setAttribute("mode", "DUMBBELLFLYES");
		return "exercises";
	}
	
	@RequestMapping("/5")
	private String showHammerCurl(HttpServletRequest request) {
		request.setAttribute("mode", "HAMMERCURL");
		return "exercises";
	}
	
	@RequestMapping("/7")
	private String showLegRaises(HttpServletRequest request) {
		request.setAttribute("mode", "LEGRAISES");
		return "exercises";
	}
	
	@RequestMapping("/4")
	private String showLegSquat(HttpServletRequest request) {
		request.setAttribute("mode", "SQUAT");
		return "exercises";
	}
	
	@RequestMapping("/3")
	private String showMilitaryPress(HttpServletRequest request) {
		request.setAttribute("mode", "MILITARYPRESS");
		return "exercises";
	}
	
	@RequestMapping("/36")
	private String showPullUps(HttpServletRequest request) {
		request.setAttribute("mode", "PULLUPS");
		return "exercises";
	}
	
	@RequestMapping("/15")
	private String showRopePushdowns(HttpServletRequest request) {
		request.setAttribute("mode", "ROPEPUSHDOWNS");
		return "exercises";
	}
	
	@RequestMapping("/8")
	private String showTricepsKickbacks(HttpServletRequest request) {
		request.setAttribute("mode", "TRICEPS_KICKBACKS");
		return "exercises";
	}
	
	@GetMapping("/triceps")
	public String showTricepsEx(ModelMap map) {
		map.addAttribute("exercises", exerciseService.showMuscleBasedExercises("Triceps"));
		return "musclegroupex";
	}
	
	@GetMapping("/biceps")
	public String showBicepsEx(ModelMap map) {
		map.addAttribute("exercises", exerciseService.showMuscleBasedExercises("Biceps"));
		return "musclegroupex";
	}
	
	@GetMapping("/shoulders")
	public String showShouldersEx(ModelMap map) {
		map.addAttribute("exercises", exerciseService.showMuscleBasedExercises("Shoulders"));
		return "musclegroupex";
	}
	
	@GetMapping("/back")
	public String showBackEx(ModelMap map) {
		map.addAttribute("exercises", exerciseService.showMuscleBasedExercises("Back"));
		return "musclegroupex";
	}
	
	@GetMapping("/chest")
	public String showChestEx(ModelMap map) {
		map.addAttribute("exercises", exerciseService.showMuscleBasedExercises("Chest"));
		return "musclegroupex";
	}
	
	@GetMapping("/legs")
	public String showLegsEx(ModelMap map) {
		map.addAttribute("exercises", exerciseService.showMuscleBasedExercises("Legs"));
		return "musclegroupex";
	}
	
	@GetMapping("/abs")
	public String showAbsEx(ModelMap map) {
		map.addAttribute("exercises", exerciseService.showMuscleBasedExercises("Abs"));
		return "musclegroupex";
	}
	
	
}





