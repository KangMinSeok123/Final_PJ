package com.kh.spring.member.model.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.spring.member.model.vo.Member;


@Repository
public class MemberDAOImpl implements MemberDAO {
	
	// 사용할 sqlSession 의존성 주입을 위함
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public int insertMember(Member member) {
		return  sqlSession.insert("memberSQL.insertMember",member);
		
	}
	@Override
	public Member selectOneMember(String userId) {
		
		return sqlSession.selectOne("memberSQL.selectOneMember",userId);
	}
	@Override
	public int updateMember(Member member) {
		
		return sqlSession.update("memberSQL.updateMember",member);
	}

	@Override
	public int deleteMember(String userId) {
		return sqlSession.delete("memberSQL.deleteMember",userId);
	}
	@Override
	public int checkIdDuplicate(HashMap<String, Object> hmap) {
		System.out.println("[실행 전 ::] "+ hmap);
		sqlSession.selectOne("memberSQL.checkIdDuplicate",hmap);
		System.out.println("[실행 후 ::]" + hmap);
		return (Integer)hmap.get("result");
	}

	@Override
	public int checkIdDuplicate(String userId) {
		return sqlSession.selectOne("memberSQL.checkIdDuplicate", userId);
	}
}