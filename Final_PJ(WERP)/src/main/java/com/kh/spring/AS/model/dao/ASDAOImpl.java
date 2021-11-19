package com.kh.spring.AS.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.spring.AS.model.vo.AS;

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

	@Override
	public AS selectOneAS(int asCode) {
		
		return sqlSession.selectOne("asSQL.selectOneAS", asCode);
	}

	@Override
	public int updateStage(AS as) {
		
		return sqlSession.update("asSQL.updateStage", as);
	}

	@Override
	public int updateExpectedDate(AS as) {
		
		return sqlSession.update("asSQL.updateExpectedDate", as);
	}
	
	@Override
	public int deleteAS(int asCode) {
		
		return sqlSession.delete("asSQL.deleteAS", asCode);
	}
	

}
