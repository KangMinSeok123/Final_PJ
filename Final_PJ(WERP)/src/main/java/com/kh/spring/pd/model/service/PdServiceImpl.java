package com.kh.spring.pd.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.pd.model.dao.PdDAO;
import com.kh.spring.pd.model.vo.PdVo;

import lombok.extern.log4j.Log4j;

@Service

public class PdServiceImpl implements PdService{

	@Autowired
	PdDAO pdDAO;
	
	@Override
	public int insertPd(PdVo pd) {
		return pdDAO.insertPd(pd);
	}

	public int pdEnroll(PdVo pd) {
		return pdDAO.insertPd(pd);
		
		
	}
}
