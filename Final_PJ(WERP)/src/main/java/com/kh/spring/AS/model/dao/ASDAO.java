package com.kh.spring.AS.model.dao;

import java.util.List;
import java.util.Map;

public interface ASDAO {
	
	List<Map<String, String>> selectASList();

	int selectTotalAS();
	

}
