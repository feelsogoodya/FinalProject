package com.itwillbs.controller;

import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.ReviewDTO;
import com.itwillbs.service.ReviewService;
import com.mysql.cj.jdbc.MysqlDataSource;

@Controller
public class ReviewController {
	
	
	@Inject
	private ReviewService reviewService;

	

	@RequestMapping(value = "/review/review", method = RequestMethod.GET)
	public String review() {
		// 기본 이동방식 : 주소변경 없이 이동

		return "review/insertReview";
	}
	
	
	
	@RequestMapping(value = "/review/insertReview", method = RequestMethod.POST)
	public String insertReview(ReviewDTO reviewDTO, HttpSession session, MemberDTO memberDTO ) {
		System.out.println("review 시작!!!!!!!!!!!!");

		
		reviewService.insertReview(reviewDTO);
//		System.out.println("가져온 ID: "+reviewer);

		session.setAttribute("reviewer", memberDTO.getMemberId());
		// 기본 이동방식 : 주소변경 없이 이동
		return null;
	}
		
		
		
		 
		
		
	}
	
	

	
	
