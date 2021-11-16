package com.kh.spring.errorP.model.service;

import java.util.List;
import java.util.Map;

import com.kh.spring.errorP.model.vo.Attachment;
import com.kh.spring.errorP.model.vo.ErrorP;


public interface ErrorPService {
	List<Map<String, String>> selectErrorPList(int cPage, int numPerPage);

	int selectErrorPTotalContents();

	int insertErrorP(ErrorP errorP, List<Attachment> attachList);

	ErrorP selectOneErrorP(int errorpNo);

	List<Attachment> selectAttachmentList(int errorpNo);

	ErrorP updateView(int errorpNo);
	
	int updateErrorP(ErrorP errorP, List<Attachment> attachList);
	
	int deleteErrorP(int errorpNo);

	int deleteFile(int attNo);
	
}
