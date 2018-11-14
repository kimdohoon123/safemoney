package kr.co.mlec.main.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.mlec.main.service.MainService;

@Controller
public class MainController {

	@Autowired
	private MainService service;

	@RequestMapping("/main/main.do")
	public void Main(String userid, HttpSession HS) throws Exception {
		System.out.println("userid : " + userid);
		HS.setAttribute("user",service.list());
		
//		ModelAndView mav = new ModelAndView("main/main");
//		mav.addObject("main", service.list());
//		return mav;
	}
	
}


	