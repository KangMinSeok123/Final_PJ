package com.kh.spring.AS.model.dao;

import java.util.List;
import java.util.Map;

import com.kh.spring.AS.model.vo.AS;

public interface ASDAO {
	
	List<Map<String, String>> selectASList();

	int selectTotalAS();

	AS selectOneAS(int asCode);

	int updateStage(AS as);
	
	int updateExpectedDate(AS as);
	
	int deleteAS(int asCode);

}
