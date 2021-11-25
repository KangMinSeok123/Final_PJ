package com.kh.spring.in.model.dao;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.kh.spring.in.model.vo.InManagement;
import com.kh.spring.pd.model.vo.PdVo;

@Repository
public class InDAOImpl implements InDAO {

	@Autowired
	SqlSessionTemplate sqlSession;

	
	@Override
	public int insertIn(PdVo pd) {
		
		return sqlSession.insert("inSQL.insertIn", pd);
	}
	
	@Override
	public List<Map<String, String>> selectinList(int cPage, int numPerPage) {
		// 데이터베이스에서 특정 갯수의 행만 가져오는 객체
		RowBounds rows = new RowBounds((cPage - 1 ) * numPerPage, numPerPage);
		
		return sqlSession.selectList("inSQL.selectinList",null,rows);
	}

	@Override
	public int selectTotalIn() {
		
		return sqlSession.selectOne("inSQL.selectTotalIn");
	}

	@Override
	public InManagement updateView(String incode) {
		
		return sqlSession.selectOne("inSQL.updateView", incode);
	}

	
	@Override
	public int updateList(InManagement inNum) {
		
		return sqlSession.update("inSQL.updateList", inNum);
	}


	
	@Override
	public int deleteList(String incode) {
		
		return sqlSession.delete("inSQL.deleteList", incode);
	}

	@Override
	public List<String> getProCodeList() {
		
		return sqlSession.selectList("inSQL.getProCodeList");
	}

	@Override
	public PdVo selectOneInManagement(String procode) {
		
		return sqlSession.selectOne("inSQL.selectOneInManagement", procode);
	}

	@Override
	public int updateStock(PdVo pd) {
		
		 return sqlSession.update("inSQL.updateStock", pd);
	}






	
	
	
}