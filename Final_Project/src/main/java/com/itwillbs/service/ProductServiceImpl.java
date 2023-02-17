package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.ProductDAO;
import com.itwillbs.domain.ProductDTO;

@Service
public class ProductServiceImpl implements ProductService{
	
	@Inject
	private ProductDAO productDAO;

	@Override
	public List<ProductDTO> getPrdFromTheLatest() {
		return productDAO.getPrdFromTheLatest();
	}

	@Override
	public List<ProductDTO> getPrdTopViews() {
		return productDAO.getPrdTopViews();
	}

	@Override
	public List<ProductDTO> getPrdTopWishList() {
		
		return productDAO.getPrdTopWishList();
	}

	@Override
	public ProductDTO getProductInfo(String productNum) {
		System.out.println("productService");
		return productDAO.getProductInfo(productNum);
	}
}
