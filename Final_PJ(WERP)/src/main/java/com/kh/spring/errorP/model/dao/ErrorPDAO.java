package com.kh.spring.errorP.model.dao;

import java.util.List;
import java.util.Map;

import com.kh.spring.errorP.model.vo.Attachment;
import com.kh.spring.errorP.model.vo.ErrorP;


public interface ErrorPDAO {
	List<Map<String, String>> selectBoardList(int cPage, int numPerPage);

	int selectErrorPTotalContents();

	int insertErrorP(ErrorP errorP);

	int insertAttachment(Attachment a);

	ErrorP selectOneErrorP(int errorpNo);

	List<Attachment> selectAttachmentList(int errorpNo);
	
	int updateErrorP(ErrorP errorP);

	int updateAttachment(Attachment a);

	int deleteErrorP(int errorpNo);

	int deleteAttachment(int errorpNo);

	int deleteFile(int attNo);
}
