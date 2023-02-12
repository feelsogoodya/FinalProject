package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.SellDTO;

@Repository
public class SellDAOImpl implements SellDAO {
	// 마이바티스 자동 객체생성
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.itwillbs.mappers.sellMapper";
	
	

	@Override
	public List<SellDTO> getSellList(PageDTO dto) {

		return sqlSession.selectList(namespace + ".getSellList", dto);
	}//

	@Override
	public int getSellCount() {
		return sqlSession.selectOne(namespace + ".getSellCount");

	}//
	
	
	

}// class
