package com.kh.spring.errorP.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.spring.errorP.model.vo.Attachment;
import com.kh.spring.errorP.model.vo.ErrorP;

@Repository
public class ErrorPDAOImpl implements ErrorPDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public List<Map<String, String>> selectBoardList(int cPage, int numPerPage) {
		// 데이터베이스에서 특정 갯수의 행만 가져오는 객체
				RowBounds rows = new RowBounds((cPage - 1)* numPerPage, numPerPage);
				
				return sqlSession.selectList("errorPSQL.selectErrorPList", null, rows);
	}

	@Override
	public int selectErrorPTotalContents() {
		
		return sqlSession.selectOne("errorPSQL.selectErrorPTotalContents");
	}

	@Override
	public int insertErrorP(ErrorP errorP) {
		
		return sqlSession.insert("errorPSQL.insertErrorP", errorP);
	}

	@Override
	public int insertAttachment(Attachment a) {
		
		return sqlSession.insert("errorPSQL.insertAttachment", a);
	}

	@Override
	public ErrorP selectOneErrorP(int errorpNo) {
		
		return sqlSession.selectOne("errorPSQL.selectOneErrorP", errorpNo);
	}

	@Override
	public List<Attachment> selectAttachmentList(int errorpNo) {
		
		return sqlSession.selectList("errorPSQL.selectAttachmentList", errorpNo);
	}

	@Override
	public int updateErrorP(ErrorP errorP) {
		
		return sqlSession.update("errorPSQL.updateErrorP", errorP);
	}

	@Override
	public int updateAttachment(Attachment a) {
		
		return sqlSession.update("errorPSQL.updateAttachment", a);
	}

	@Override
	public int deleteErrorP(int errorpNo) {
		
		return sqlSession.delete("errorPSQL.deleteErrorP", errorpNo);
	}

	@Override
	public int deleteAttachment(int errorpNo) {
		 
		return sqlSession.delete("errorPSQL.deleteAttachment", errorpNo);
	}

	@Override
	public int deleteFile(int attNo) {
		
		return sqlSession.delete("errorPSQL.deleteFile", attNo);
	}

}
