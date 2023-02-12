package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.SellDAO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.SellDTO;

@Service
public class sellServiceImpl implements SellService {
	@Inject
	private SellDAO sellDAO;

	@Override
	public List<SellDTO> getSellList(PageDTO dto) {
	
		// startRow 구하기
				int startRow=(dto.getCurrentPage()-1)*dto.getPageSize()+1;
				// endRow 구하기
				int endRow=startRow+dto.getPageSize()-1;
				
				// 디비 limit startRow-1 
				dto.setStartRow(startRow-1);
				dto.setEndRow(endRow);
				
				return sellDAO.getSellList(dto);
	}

	@Override
	public int getSellCount() {

		return sellDAO.getSellCount();
	}
	


}
