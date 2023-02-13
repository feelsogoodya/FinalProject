package com.itwillbs.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.ReviewDTO;
import com.itwillbs.service.ReviewService;

@Controller
public class ReviewController {
	
	
	@Inject
	private ReviewService reviewService;
	
	@RequestMapping(value = "/review/review", method = RequestMethod.GET)
	public String review() {
		// 기본 이동방식 : 주소변경 없이 이동
		return "review/insertReview";
	}
	
	
	@RequestMapping(value = "/review/reviewPro", method = RequestMethod.POST)
	public String reviewPro(ReviewDTO reviewDTO) {
		System.out.println("reviewPro 시작!!!!!!!!!!!!");
		// insertBoard(boardDTO) 메서드 호출
		reviewService.insertReview(reviewDTO);
		
		// 기본 이동방식 : 주소변경 없이 이동
		return "redirect:/list/buylist";
	}
		
		
		
		
		
		
	}
	
	

	
	
