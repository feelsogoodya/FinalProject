package com.itwillbs.dao;

import java.util.List;

import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.SellDTO;

public interface SellDAO {
	public List<SellDTO> getSellList(PageDTO dto);

	public int getSellCount();
		

}
