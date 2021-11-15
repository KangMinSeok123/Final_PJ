package com.kh.spring.in.model.dao;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.spring.in.model.vo.InManagement;

@Repository
public class InDAOImpl implements InDAO {

	@Autowired
	SqlSessionTemplate sqlSession;

	
	@Override
	public int insertIn(InManagement inNum) {
		
		return sqlSession.insert("inSQL.insertIn", inNum);
	}
	

}