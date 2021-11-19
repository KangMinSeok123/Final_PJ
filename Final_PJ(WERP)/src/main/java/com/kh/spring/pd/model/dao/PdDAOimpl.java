package com.kh.spring.pd.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.spring.pd.model.vo.PdVo;

@Repository
public class PdDAOimpl implements PdDAO{
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public int insertPd(PdVo pd) {
		return sqlSession.insert("pdSQL.insertPd", pd);
	}

}
