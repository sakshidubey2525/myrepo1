package com.lti.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import com.lti.model.Exam;
import com.lti.model.Question;
import com.lti.service.IExamService;
@Controller
public class ExamController {
	private IExamService examService;
@Autowired
	public void setExamService(IExamService examService) {
		this.examService = examService;
	}
int i=0;
int score=0;
int l=1;
	@RequestMapping(value="/fetch",method=RequestMethod.GET)
	public String DisplayDashboard(Model model) {
	
		return "Studentdashboard" ;
	}
///Java
	@RequestMapping(value="/fetchjava",method=RequestMethod.GET)
	public String DisplayJava(Model model) {
		model.addAttribute("exam", new Exam());
		return "instruction" ;
	}
	@RequestMapping(value = "/fetchjavaques")
	public String Fetchjavaquestion(@ModelAttribute ("exam")
	@Valid Exam e,Model model,HttpSession session) {
	 l=1;
			List<Question> list1=this.examService.fetchAlljavaQuestion(l);
			while(i < (list1.size())-1 ){
				session.setAttribute("ques",list1.get(i));
					i++;
					return "viewpaper";
		}
			return "result";
	    }
	
	int i1=0;  int i6=0;
	@RequestMapping(value = "/fetchjava2")
	public String Fetchjava2(@ModelAttribute ("exam")
	@Valid Exam e,Model model,HttpSession session) {
		int s=(Integer) session.getAttribute("s1");
        if(s<=2)//level2
        {
        int l2=2;
	List<Question> li=this.examService.fetchAlljavaQuestion(l2);
	while(i1 <=(li.size())-1 ){
		session.setAttribute("ques",li.get(i1));
			i1++;
			return "viewpaper";
			} 
	return "result1";
	}	
        else if(s>=3)///level3
	{ 
	       l=3;
		List<Question> list=this.examService.fetchAlljavaQuestion(l);
		//System.out.println("aa");
		System.out.println(list);
		while(i6 <=(list.size())-1){
			session.setAttribute("ques",list.get(i6));
				i6++;
				return "viewpaper";
	}
		return "result1";
	}
	return "result1";
	}
	
		
////html question
	int i3=0;
	   int i4=0;
	@RequestMapping(value="/fetchhtml")
	public String Displayhtml(Model model) {
		return "instruction1" ;
	}
	@RequestMapping(value="/fetchhtmlques",method =RequestMethod.GET)
	  public String fetchhtmlquestion(@ModelAttribute("exam")Exam e,HttpSession session) {
		 l=1;
			List<Question> list1=this.examService.fetchAllhtmlQuestion(l);
			while(i < (list1.size())-1){
				session.setAttribute("ques",list1.get(i));
					i++;
					return "viewpaper";
		}
			return "result";}

	@RequestMapping(value = "/fetchhtml2")
	public String Fetchhtml2(Model model,HttpSession session) {
		int s=(Integer) session.getAttribute("s1");
        if(s<=2){
    l=2;
	List<Question> li=this.examService.fetchAllhtmlQuestion(l);
	while(i3 <= (li.size())-1 ){
		session.setAttribute("ques",li.get(i3));
			i3++;
			return "viewpaper";
			} 
	return "result1";
	}	
   
	 if(s>=3)
	{ 
	       l=3;
		List<Question> list=this.examService.fetchAllhtmlQuestion(l);
		while(i4 <=(list.size())-1){
			System.out.println(list);
			session.setAttribute("ques",list.get(i4));
				i4++;
				return "viewpaper";
	}
		return "result1";
	}
	return "result1";
	}
	////sql question
	@RequestMapping(value="/fetchsql",method=RequestMethod.GET)
	public String Displaysql(Model model) {
	
		return "instruction2" ;
	}
	
	@RequestMapping(value="/fetchsqlques")
	public String Fetchsqlquestion(HttpSession session) {
		 l=1;
			List<Question> list1=this.examService.fetchAllsqlQuestion(l);
			while(i <(list1.size())-1 ){
				session.setAttribute("ques",list1.get(i));
					i++;
					return "viewpaper";
		}
			return "result";}
	int i2=0;
	int i5=0;
	@RequestMapping(value = "/fetchsql2")
	public String Fetchsql2(Model model,HttpSession session) {
		int s=(Integer) session.getAttribute("s1");
		System.out.println("value of s from sql2"+s);
        if(s<=2){
        int l2=2;
	List<Question> li=this.examService.fetchAllsqlQuestion(l2);

	while(i5 <=(li.size())-1){
		session.setAttribute("ques",li.get(i5));
			i5++;
			return "viewpaper";
			} 
	return "result1";
	}	
	 if(s>=3)
	{ 
	       l=3;
		List<Question> list=this.examService.fetchAllsqlQuestion(l);
		
		while(i2 <= (list.size())-1){
			session.setAttribute("ques",list.get(i2));
				i2++;
				return "viewpaper";
	}
		return "result1";
	}
	return "result1";
	}
	
	////evalution
	@RequestMapping(value="/evalute")
	public String Evaluteresult(HttpSession session,@RequestParam("option")int option,@ModelAttribute("exam")Exam e) {
		
		Question q1=(Question)session.getAttribute("ques");
		int r =q1.getRightanswer();
		 e.setUser_choice(option);
		if(option==r)
		{
		score++;
		System.out.println(score);
			session.setAttribute("s1", score);
		}
		String x=q1.getTopic() ;
		if(x .equals("java") ) {
		return "redirect:/fetchjavaques";
		}
		else if((x .equals("html"))){
		return "redirect:/fetchhtmlques";
		}
		else {
	return "redirect:/fetchsqlques";
	}
	}
	//level
	@RequestMapping(value="/level")
	public String Level(HttpSession session) {
		Question q1=(Question)session.getAttribute("ques");
	String x=q1.getTopic() ;
	if(x .equals("java") ) {
		
	return "redirect:/fetchjava2";
	}
	else if((x .equals("html"))){
	return "redirect:/fetchhtml2";
	}
	else 
	{
        return "redirect:/fetchsql2";
	}
	}
@RequestMapping(value="/Student")
public String returnback(HttpSession session) {
	
	return"Studentdashboard";}
	
@RequestMapping("/logout1")
public String logout(HttpSession session ) {
    session.invalidate();
    return "redirect:/Login";
} 
}

