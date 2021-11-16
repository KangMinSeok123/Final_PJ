package com.kh.spring.errorP.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.errorP.model.dao.ErrorPDAO;
import com.kh.spring.errorP.model.vo.Attachment;
import com.kh.spring.errorP.model.vo.ErrorP;
import com.kh.spring.exception.ErrorPException;
@Service
public class ErrorPServiceImpl implements ErrorPService {
	
	@Autowired
	ErrorPDAO errorPDAO;
	
	@Override
	public List<Map<String, String>> selectErrorPList(int cPage, int numPerPage) {
		
		return errorPDAO.selectBoardList(cPage, numPerPage);
		
	}

	@Override
	public int selectErrorPTotalContents() {
		
		return errorPDAO.selectErrorPTotalContents();
	}

	@Override
	public int insertErrorP(ErrorP errorP, List<Attachment> attachList) {
		
		int errorPResult = errorPDAO.insertErrorP(errorP);
		
		// 첨부파일이 boardNo를 알 수 있는 방법
		// 1. BoardDAO를 통해서 가장 최근에 추가된 게시글 번호 가져오기 ( O )
		// 2. mapper 파일을 통해서             ..  
		
		if( attachList.size() > 0) {
			// 첨부파일이 있을 때만 실행해라
			
			for(Attachment a : attachList) {
				int attachResult = errorPDAO.insertAttachment(a);
				if( attachResult == 0 ) throw new ErrorPException("첨부파일 전송 실패!");
			}
		}
				
		return errorPResult;
	}

	@Override
	public ErrorP selectOneErrorP(int errorpNo) {
		ErrorP errorP = errorPDAO.selectOneErrorP(errorpNo);
		
		return errorP;
	}

	@Override
	public List<Attachment> selectAttachmentList(int errorpNo) {
		
		return errorPDAO.selectAttachmentList(errorpNo);
	}

	@Override
	public ErrorP updateView(int errorpNo) {

		return errorPDAO.selectOneErrorP(errorpNo);
	}

	@Override
	public int updateErrorP(ErrorP errorP, List<Attachment> attachList) {
		int totalResult = 0;
		
		List<Attachment> originList = errorPDAO.selectAttachmentList(errorP.getErrorpNo());
		
		totalResult = errorPDAO.updateErrorP(errorP);  // DAO 로 이동하기
		
		if(totalResult == 0) throw new ErrorPException("게시글 수정 실패!");
		
		if( originList.size() > 0) { 
			// 기존 첨부파일이 DB에 있다면
			totalResult = errorPDAO.deleteAttachment(errorP.getErrorpNo());
			
			if(totalResult == 0) throw new ErrorPException("첨부파일 삭제 실패!");
		}
		
		if( attachList.size() > 0) {
			for(Attachment a : attachList) {
				totalResult = errorPDAO.updateAttachment(a);
				
				if(totalResult == 0) throw new ErrorPException("게시글 첨부파일 수정 실패!");
			}
		}
		
		return totalResult;
	}

	@Override
	public int deleteErrorP(int errorpNo) {
		
		return errorPDAO.deleteErrorP(errorpNo);
	}

	@Override
	public int deleteFile(int attNo) {
		
		return errorPDAO.deleteFile(attNo);
	}

}