package com.example.demo.controllers;

import java.security.Principal;
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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
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
			@ModelAttribute("user") User user) {

		if (error != null) {
			model.addAttribute("errorMessage", "Invalid Credentials, Please try again.");
		}
		if (logout != null) {
			model.addAttribute("logoutMessage", "Logout Successful!");
		}
		return "register.jsp"; // loginPage
	}

	@RequestMapping("/home2")
	public String hom2() {

		return "homePage.jsp";
	}

	@RequestMapping(value = { "/home" })
	public String home(@AuthenticationPrincipal Principal principal, Model model) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String currentPrincipleName = auth.getName();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
		Long userROLE = userService.findByUsername(currentPrincipleName).getRoles().get(0).getId();
		if(userROLE==2)
			return "redirect:/admin";
		if(userROLE==1)
			return "redirect:/rider/"+userROLE;
		if(userROLE==3)
			return "redirect:/driver";
		
			String username = auth.getName();

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

	@RequestMapping("/rider/{id}")
	public String riderPage(@PathVariable("id")Long id,@ModelAttribute("User")User user,Model model) {
		model.addAttribute("User", userService.findUserById(id));
		return "rider.jsp";
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
	@RequestMapping("/driver")
	public String driverPage() {
		return "driver.jsp";
	}
	
	

}

