package com.itwillbs.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.service.MemberService;

@Controller
public class MemberController {

	@Inject
	private MemberService memberService;
	
	@RequestMapping(value = "/member/login", method = RequestMethod.GET)
	public String login() {
		
		return "member/login";
	}
	
	@RequestMapping(value = "/member/loginPro", method = RequestMethod.POST)
	public String loginPro(MemberDTO memberDTO, HttpSession session) {
		
		System.out.println("입력"+memberDTO.getMemberId());
		System.out.println("입력"+memberDTO.getMemberPass());
		
		MemberDTO memberDTO2 = memberService.userCheck(memberDTO);
		
		System.out.println("가져온 DTO"+ memberDTO.getMemberId());
		System.out.println("가져온 DTO"+ memberDTO.getMemberPass());
		
		if(memberDTO2 == null) {
			return "redirect:/member/login";
		}
		
		session.setAttribute("memberId", memberDTO.getMemberId());
		return "redirect:/main/main";
	}
}
