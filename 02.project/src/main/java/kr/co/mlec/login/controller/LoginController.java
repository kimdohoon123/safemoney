package kr.co.mlec.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.mlec.repository.domain.Member;

@Controller
public class LoginController {
	
	// 서비스 선언(자동주입)
	
	
	@RequestMapping("/login/login.do")
	public void login(Member member) throws Exception {
		// 서비스객체 호출 - 결과 받기
//		Login login = new Login();
//		
	}
}
