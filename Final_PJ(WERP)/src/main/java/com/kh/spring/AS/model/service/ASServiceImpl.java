package com.kh.spring.AS.model.service;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.AS.model.dao.ASDAO;
import com.kh.spring.AS.model.vo.AS;

@Service
public class ASServiceImpl implements ASService {
	
	@Autowired
	ASDAO asDAO;

	@Override
	public List<Map<String, String>> selectASList() {
		
		return asDAO.selectASList();
	}

	@Override
	public int selectTotalAS() {
		
		return asDAO.selectTotalAS();
	}

	@Override
	public AS selectOneAS(int asCode) {
		
		return asDAO.selectOneAS(asCode);
	}

	@Override
	public int updateStage(AS as) {
		
		return asDAO.updateStage(as);
	}
	
	@Override
	public int updateExpectedDate(AS as) {
		
		return asDAO.updateExpectedDate(as);
	}

	@Override
	public int deleteAS(int asCode) {
		
		return asDAO.deleteAS(asCode);
	}

	

}
