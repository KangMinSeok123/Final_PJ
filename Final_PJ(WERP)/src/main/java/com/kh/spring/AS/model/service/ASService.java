package com.kh.spring.AS.model.service;

import java.util.List;
import java.util.Map;

import com.kh.spring.AS.model.vo.AS;

public interface ASService {
	
	List<Map<String, String>> selectASList();

	int selectTotalAS();

	AS selectOneAS(int asCode);

	int updateStage(AS as);
	
	int updateExpectedDate(AS as);
	
	int deleteAS(int asCode);
	

}
