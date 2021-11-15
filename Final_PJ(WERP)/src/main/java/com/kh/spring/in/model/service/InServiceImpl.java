package com.kh.spring.in.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.in.model.dao.InDAO;
import com.kh.spring.in.model.vo.InManagement;

@Service
public class InServiceImpl implements InService {

	@Autowired
	InDAO inDAO;
	
	@Override
	public int insertIn(InManagement inNum) {
		
		return inDAO.insertIn(inNum);
		
		
		
	}

}