package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProductDTO;

public interface ProductService {

	public List<ProductDTO> getProductList(PageDTO pageDTO);
	
	public int getProductCount();
	
	
}
