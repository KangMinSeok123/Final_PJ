package com.kh.spring.in.model.service;

import java.util.List;
import java.util.Map;

import com.kh.spring.in.model.vo.InManagement;
import com.kh.spring.pd.model.vo.PdVo;

public interface InService {

	List<Map<String, String>> selectinList(int cPage, int numPerPage);

	List<String> getProCodeList();
	
	PdVo selectOneInManagement(String procode);
	
	int selectTotalIn();
	
	int updateStock(PdVo pd);
	
	InManagement updateView(String incode);
	
	int updateList(InManagement inNum);

	
	int deleteList(String incode);

}