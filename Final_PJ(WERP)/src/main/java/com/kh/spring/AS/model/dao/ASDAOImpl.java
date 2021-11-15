package com.kh.spring.AS.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ASDAOImpl implements ASDAO {

	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public List<Map<String, String>> selectASList() {
		
		return sqlSession.selectList("asSQL.selectASList");
	}

	@Override
	public int selectTotalAS() {
		
		return sqlSession.selectOne("asSQL.selectTotalAS");
	}
	

}
