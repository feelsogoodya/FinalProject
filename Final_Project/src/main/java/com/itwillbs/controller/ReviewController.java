package com.itwillbs.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.ReviewDTO;
import com.itwillbs.service.MemberService;
import com.itwillbs.service.ReviewService;

@Controller
public class ReviewController {
	
	
	@Inject
	private ReviewService reviewService;
	@Inject
	private MemberService memberService;
	

	@RequestMapping(value = "/review/review", method = RequestMethod.GET)
	public String review() {
		// 기본 이동방식 : 주소변경 없이 이동

		return "review/insertReview";
	}
	
	
	
	@RequestMapping(value = "/review/insertReview", method = RequestMethod.POST)
	public String insertReview(ReviewDTO reviewDTO,HttpSession session, MemberDTO memberDTO) {
		System.out.println("review 시작!!!!!!!!!!!!");
		// insertBoard(boardDTO) 메서드 호출
//		String reviewer = (String)session.getAttribute("memberID");
//		System.out.println("가져온 ID: "+reviewer);

		reviewService.insertReview(reviewDTO);
		session.setAttribute("reviewer", memberDTO.getMemberId());
		
		System.out.println("@@@@@@@@@@@@@: "+memberDTO.getMemberId());
		// 기본 이동방식 : 주소변경 없이 이동
		return "redirect:/list/buylist";
	}
		
		
		
		
		
		
	}
	
	

	
	
