package com.example.demo.controllers;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.Validator.UserValidator;

import com.example.demo.models.*;

import com.example.demo.services.UserService;

@Controller
public class Users {
	private UserService userService;
	
	private UserValidator userValidator;

	public Users(UserService userService, UserValidator userValidator) {
		this.userService = userService;
		this.userValidator = userValidator;
	}

	@RequestMapping("/registration")
	public String registerForm(@Valid @ModelAttribute("user") User user) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication == null || authentication instanceof AnonymousAuthenticationToken) {
			return "register.jsp";
		}
		return "redirect:/home";
//		return "register.jsp";
	}

	@PostMapping("/registration")
	public String registration(@Valid @ModelAttribute("user") User user, BindingResult result, Model model,
			HttpSession session) {
		userValidator.validate(user, result);
		if (result.hasErrors()) {
			return "register.jsp";
		}
		userService.saveWithRiderRole(user);
//		 userService.saveUserWithAdminRole(user);
		return "redirect:/registration";
	}

	// 1
	@RequestMapping("/login")
	public String login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model,
			@ModelAttribute("user") User user,HttpSession session) {
		
		if (error != null) {
			model.addAttribute("errorMessage", "Invalid Credentials, Please try again.");
		}
		if (logout != null) {
			model.addAttribute("logoutMessage", "Logout Successful!");
		}
//		session.add user.getId()
		return "register.jsp"; // loginPage
	}

	@RequestMapping("/home2")
	public String hom2() {

		return "homePage.jsp";
	}

	@RequestMapping(value = { "/home" })
	public String home(@AuthenticationPrincipal Principal principal, Model model,HttpSession session) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String currentPrincipleName = auth.getName();
		String username = auth.getName();
		Long curId = userService.findByUsername(username).getId();
				
		if (!(auth instanceof AnonymousAuthenticationToken)) {
		Long userROLE = userService.findByUsername(currentPrincipleName).getRoles().get(0).getId();
		if(userROLE==2)
			return "redirect:/admin"+curId;
		if(userROLE==1)
			return "redirect:/rider/"+curId;
		if(userROLE==3)
			return "redirect:/driver"+curId;
		
//			String username = auth.getName();

			System.out.println(userService.findByUsername(username).getRoles().get(0).getName());

			// 1
			model.addAttribute("currentUser", userService.findByUsername(username));
			model.addAttribute("currentUserRole", userService.findByUsername(username).getRoles().get(0));
		}
		return "homePage.jsp";

	}

	@RequestMapping("/admin")
	public String adminPage(Principal principal, Model model,@ModelAttribute("user") User user) {
		if (principal == null) 
			return "redirect:/"; 
		String username = principal.getName();
		model.addAttribute("currentUser", userService.findByUsername(username));
		List<User> allDriver =userService.findRoleByName("ROLE_DRIVER").getUsers();
		model.addAttribute("allDriver", allDriver);
		return "adminDashboard.jsp";
	}

	@GetMapping("/rider/{id}")
	public String riderPage(@PathVariable("id")Long id,@ModelAttribute("User")User user,@ModelAttribute("Trip")Trip trip,Model model) {
		model.addAttribute("Trip", trip);
		User u = userService.findUserById(id);
		ArrayList<User> driversNear =new ArrayList<>();
		List <User> allDrivers =  userService.findRoleByName("ROLE_DRIVER").getUsers();
		System.out.println( "allDrivers" + allDrivers);
//		.getLocation().equals(u.getLocation());
		for (int i = 0 ; i< allDrivers.size() ; i++) {
			if (allDrivers.get(i).getLocation().equals(u.getLocation()) ) {
				driversNear.add(allDrivers.get(i));
				System.out.println("hello");
			} System.out.println("if test " + allDrivers.get(i).getLocation());
			System.out.println("if test 22222"+u.getLocation());
		}
//		System.out.println(allDrivers.get(0).getLocation());
//		List<Trip> tripsU = u.getTrips();
		System.out.println("driversNear" + driversNear);
		model.addAttribute("User", u);
		List<Trip> trips23 = userService.getAllTrips();
//		User driverU  ;
		
		for (int i=0; i<trips23.size();i++) {
			if(trips23.get(i).getRider() == u.getId()) {
				User driverU = userService.findUserById((Long)trips23.get(i).getDriver()); 
				model.addAttribute("driverr", driverU);
				System.out.println("i'm here"  +driverU);
			}
		}
		
		model.addAttribute("allT", trips23);
		System.out.println(trips23);
		model.addAttribute("driversNear", driversNear);
		
		return "rider.jsp";
	}
//	@RequestParam("phone")String phone
	@PutMapping("/rider/{id}")
	public String riderUpdate(@PathVariable("id")Long id,Model model,@ModelAttribute("User")User user) {
//		User curr = userService.findUserById(id); 
//		curr.setLocation(phone);
		userService.updateUser(user);
		return "redirect:/rider/"+user.getId();
	}
	@PostMapping("/trip/request/{id}")
	public String riderRequest(@PathVariable("id")Long uId,@ModelAttribute("User")User user,@ModelAttribute("Trip")Trip trip,BindingResult result) {
		if(result.hasErrors()) {
			System.out.println("there's an error");
			return "rider.jsp"; 
		}
//		Trip t= t.setDriver(); 
		User rider = userService.findUserById(uId);
		userService.createTrip(trip);
		return "redirect:/rider/"+rider.getId();
	}
	@RequestMapping("/")
	public String homePage() {
		return "homeKhodni.jsp";
	}
	@PostMapping("/driver/new")
	public String newDriver(@Valid @ModelAttribute("user") User user ,BindingResult result) {
		if (result.hasErrors()) {
			return "adminDashboard.jsp";
		}
		Random r = new Random();
		

		String pass="";
		for(int i = 0; i < 9; i++){
			pass+= r.nextInt(10) ;
		}
		user.setPassword(pass);
		userService.saveWithDriverRole(user);
		if(userService.findByUsername(user.getUsername()) !=null)
			SendMail.sendEmail(user.getEmail(), user.getUsername(), pass);
		return "redirect:/";
		
	}
	@RequestMapping("/driver/{id}")
	public String driverPage(@PathVariable("id")Long dId,Model model) {
		User d = userService.findUserById(dId);
		model.addAttribute("driverr", d);
		List<Trip> dTrip = userService.getAllTrips();
		ArrayList<Trip> tripss =new ArrayList<>();

		for (int i=0; i<dTrip.size();i++) {
			if(dTrip.get(i).getDriver() == d.getId()) {
				User riderU = userService.findUserById((Long)dTrip.get(i).getRider()); 
				model.addAttribute("riderr", riderU);
				System.out.println(riderU.getPhone());
				tripss.add(dTrip.get(i));
			}
		}
		model.addAttribute("tripss", tripss); //is a list
		model.addAttribute("dTrip", dTrip);//not list
		return "driver.jsp";
	}
	
	

}

