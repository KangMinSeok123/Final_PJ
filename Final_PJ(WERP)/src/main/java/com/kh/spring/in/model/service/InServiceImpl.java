package com.kh.spring.in.model.service;

import java.util.List;
import java.util.Map;

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
	
	@Override
	public List<Map<String, String>> selectinList(int cPage, int numPerPage) {
		
		return inDAO.selectinList(cPage, numPerPage);
	}

	@Override
	public int selectTotalIn() {
		
		return inDAO.selectTotalIn();
	}


	@Override
	public InManagement updateView(String incode) {
		
		return inDAO.updateView(incode);
	}
	
	@Override
	public int updateList(InManagement inNum) {
		
		return inDAO.updateList(inNum);
	}

	
	
	@Override
	public int deleteList(String incode) {
		
		return inDAO.deleteList(incode);
	}


	



}