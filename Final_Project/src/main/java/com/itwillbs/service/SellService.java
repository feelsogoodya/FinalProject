package com.itwillbs.service;

import java.util.List;

import com.itwillbs.dao.SellDAO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.SellDTO;

public interface SellService {
	public List<SellDTO> getSellList(PageDTO dto);
	
	public int getSellCount();
	
}
