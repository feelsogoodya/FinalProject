package com.itwillbs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProductDTO;
import com.itwillbs.domain.ReviewDTO;
import com.itwillbs.service.ProductService;

@Controller
public class ProductController {
	
	
	@Inject
	private ProductService productService;


	
	
	@RequestMapping(value = "/product/product", method = RequestMethod.GET)
	public String productlist(HttpServletRequest request, Model model) {
		System.out.println(" product시작!!!!!!!!!!!!");
		
		int pageSize = 3;
		// 페이지 번호 가져오기
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null) {
			pageNum="1";
		}
		int currentPage = Integer.parseInt(pageNum);
		PageDTO pageDTO= new PageDTO();
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);
		pageDTO.setCurrentPage(currentPage);
		
		List<ProductDTO> productList =productService.getProductList(pageDTO);
		
		int count = productService.getProductCount();
		int pageBlock=10;
		int startPage=(currentPage-1)/pageBlock*pageBlock+1;
		int endPage=startPage+pageBlock-1;
		int pageCount=count/pageSize+(count%pageSize == 0 ? 0 : 1);
		if(endPage > pageCount){
			endPage=pageCount; 
		}
		pageDTO.setCount(count);
		pageDTO.setPageBlock(pageBlock);
		pageDTO.setStartPage(startPage);
		pageDTO.setEndPage(endPage);
		pageDTO.setPageCount(pageCount);
		
		System.out.println(pageDTO);
		model.addAttribute("productList", productList);
		model.addAttribute("pageDTO", pageDTO);
		return "product/productlist";
	}
		
	@RequestMapping(value = "/product/product", method = RequestMethod.POST)
	public String insertReview(ProductDTO productDTO, HttpSession session, MemberDTO memberDTO ) {
		System.out.println("review 시작!!!!!!!!!!!!");

		
		productService.insertProduct(productDTO);
//		System.out.println("가져온 ID: "+reviewer);

		session.setAttribute("reviewer", memberDTO.getMemId());
		// 기본 이동방식 : 주소변경 없이 이동
		return "redirect:/list/buylist";
	}	
		
		
		
		
	}
	
	

	
	
