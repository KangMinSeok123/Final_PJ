package com.kh.spring.pd.model.service;

import com.kh.spring.pd.model.vo.PdVo;

public interface PdService {

	/* 상품 등록 */
	/*public int pdEnroll(PdVo pd);*/

	int insertPd(PdVo pd);

	int pdEnroll(PdVo pd);

	
}
