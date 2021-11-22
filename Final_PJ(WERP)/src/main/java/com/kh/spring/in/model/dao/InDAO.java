package com.kh.spring.in.model.dao;


import java.util.List;
import java.util.Map;

import com.kh.spring.in.model.vo.InManagement;


public interface InDAO {
	

	int insertIn(InManagement inNum);
	
	List<Map<String, String>> selectinList(int cPage, int numPerPage);

	int selectTotalIn();

	InManagement updateView(String incode);
	
	int updateList(InManagement inNum);
	
	int deleteList(String incode);
	
	
}