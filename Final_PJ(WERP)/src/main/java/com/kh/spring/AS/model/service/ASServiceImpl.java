package com.kh.spring.AS.model.service;

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
	public AS selectOneAS(String asCode) {
		
		return asDAO.selectOneAS(asCode);
	}

	

}
