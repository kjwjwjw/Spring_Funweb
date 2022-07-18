package com.itwillbs.funweb.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.funweb.service.MainService;
import com.itwillbs.funweb.vo.MemberVO;

@Controller
public class MainController {
	
	@Autowired
	MainService service;
	
	
	
	// 홈 버튼 클릭시 - 메인페이지 이동
	@RequestMapping(value = "home", method = RequestMethod.GET)
	public String home() {
		return "redirect:/";
	}
	
	// 조인 버튼 클릭시 - 회원가입 페이지 이동
	@RequestMapping(value = "join", method = RequestMethod.GET)
	public String join() {
		
		return "member/join";
	}
	
	
	// 로그인 버튼 클릭시 - 로그인 페이지 이동
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login() {
		
		return "member/login";
	}
	
	// 로그인
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(@ModelAttribute MemberVO member, Model model, HttpSession session) {
		
		MemberVO membercheck = service.loginMember(member);
		
		if(membercheck == null) {
			model.addAttribute("msg", "로그인 실패");
			return "login";
		}
		
		
		return "";
	}
	
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.getAttribute("sId");
		session.invalidate();
		return "redirect:/";
		
	}


}
