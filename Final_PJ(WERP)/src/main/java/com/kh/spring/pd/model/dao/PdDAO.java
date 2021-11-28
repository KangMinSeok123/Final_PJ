package com.kh.spring.pd.model.dao;

import com.kh.spring.pd.model.vo.PdVo;
import java.util.List;

public interface PdDAO {

	int insertPd(PdVo pd);

	// 품목 목록
	public List<PdVo> pdlist() throws Exception;
	
	// 품목 조회
	public PdVo pdView(String procode) throws Exception;
	
	// 품목 수정 view
//	public void pdModify(PdVo pd) throws Exception;
	List<PdVo> getProductList();

	// 품목 수정 update
	int pdUpdate(PdVo pd) throws Exception;
	
	// 품목 삭제
	public int pdDelete(String procode) throws Exception;

}
