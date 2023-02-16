package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.ProductDTO;

public interface ProductService {
	
	public List<ProductDTO> getPrdFromTheLatest();
	
	public List<ProductDTO> getPrdTopViews();
	
	public List<ProductDTO> getPrdTopWishList();
}
