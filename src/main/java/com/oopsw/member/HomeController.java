package com.oopsw.member;

import java.text.DateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private MemberService memberService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);		
		//Date date = new Date();
		//DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);		
		//String formattedDate = dateFormat.format(date);
		String formattedDate = memberService.selectDate();		
		model.addAttribute("serverTime", formattedDate );		
		return "home";
	}
	@RequestMapping(value = "/loginUI", method = RequestMethod.GET)
	public String loginUI(){
		return "login";
	}
	@RequestMapping(value = "/loginAction", method = RequestMethod.POST)
	public String loginAction(HttpServletRequest request,Model model){
		String loginOK = memberService.login(request.getParameter("id"), request.getParameter("pw"));
		if(loginOK !=null){
			HttpSession session=request.getSession(true);			
			session.setAttribute("loginOK", loginOK);
			//model.addAttribute("loginOK", loginOK); 		
			return "memberOK";
		}
		return "redirect:/loginUI";
	}
	@RequestMapping(value = "/getMembers", method = RequestMethod.GET)
	public String getMembers(HttpServletRequest request){
		Collection<String> list=memberService.getMembers();
		request.setAttribute("list", list);
		return "getMembers";
	}
	
}
