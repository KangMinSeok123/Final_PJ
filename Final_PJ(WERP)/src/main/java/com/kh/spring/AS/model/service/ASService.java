package com.kh.spring.AS.model.service;

import java.util.List;
import java.util.Map;

import com.kh.spring.AS.model.vo.AS;

public interface ASService {

	List<Map<String, String>> selectASList(int cPage, int numPerPage, String key, String word);

	int selectTotalAS(String key, String word);

	AS selectOneAS(int asCode);

	int updateAS(AS as);

	int deleteAS(int asCode);

}
