package com.itwillbs.dao;

import java.util.List;

import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProductDTO;

public interface ProductDAO {

	public List<ProductDTO> getProductList(PageDTO pageDTO);
	public int getProductCount();
	
	public void insertProduct(ProductDTO productDTO);
	
}
