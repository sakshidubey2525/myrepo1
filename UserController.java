package com.lti.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.lti.exception.CustomException;
import com.lti.model.Exam;
import com.lti.model.Question;
import com.lti.model.User;
import com.lti.service.IUserService;

@Controller
public class UserController {
	@Autowired
	//@Qualifier(value="userService")
	private IUserService iUserService;

	
	
	public void setUserService(IUserService us) {
		this.iUserService = us;}

	@RequestMapping(value="/registration")
	public String gotoUserpage(Model model) {
	model.addAttribute("register1",new User());
		return "SignUp";
	}
	@RequestMapping(value ="/" ,method=RequestMethod.GET)
	public String homePage(){
		return "index1";
	}
	@RequestMapping(value ="/index1" ,method=RequestMethod.GET)
	public String homePage1(){
		return "index1";
	}
	
	
	// For add  user both
	@RequestMapping(value = "/add", 
			method = RequestMethod.POST)
	public String addUser(
			@ModelAttribute("register1") 
			@Valid User u, 
			Model model,Map model1) {
		
				this.iUserService.addUser(u);
				// new user, add it
				model1.put("Alert","Thank you for registration");
			
				return "Studentdashboard";
					
}
	@RequestMapping("/Login")
	public String showLoginView(Model modal)
	{		
		modal.addAttribute("authuser", new User());
		
		return "Loginuser";
	}

	@RequestMapping(value="/Verification")
	public String LoginValidation(@ModelAttribute("user")
	@Valid User u,
	BindingResult result,
	
	Model model,HttpSession session,HttpServletRequest req)
	{

		String username=req.getParameter("userName");
		String password=req.getParameter("password");
	
		if(username.equals("admin")&& password.equals("admin"))
			
		{
			return "Addques";
		}
		
		else if(iUserService.verifyUser(username, password))
		{
			
		return "Studentdashboard";
		}
		else {
		model.addAttribute("msg","*Invalid credentials");	
		return "Loginuser";
	}
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session ) {
	    session.invalidate();
	    return "redirect:/Login";
	} 
	
	@RequestMapping("/post")
	public String post(HttpSession session ) {
	    
	    return "post";
	} 
	
	@RequestMapping("/about")
	public String about(HttpSession session ) {
	    
	    return "about";
	} 
	
	@RequestMapping("/contact")
	public String contact(HttpSession session ) {
	    
	    return "contact";
	} 
	
	@RequestMapping("/index1")
public String index1(HttpSession session ) {
	    
	    return "index1";
	}
	
	
	
}

	

	

	
