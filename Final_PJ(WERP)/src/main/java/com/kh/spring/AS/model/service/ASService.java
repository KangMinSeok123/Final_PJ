package com.kh.spring.AS.model.service;

import java.util.List;
import java.util.Map;

public interface ASService {
	
	List<Map<String, String>> selectASList();

	int selectTotalAS();
	

}
