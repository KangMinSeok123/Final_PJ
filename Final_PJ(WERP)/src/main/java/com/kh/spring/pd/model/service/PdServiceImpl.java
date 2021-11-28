package com.kh.spring.pd.model.service;

import java.util.List;
import com.kh.spring.pd.model.service.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.errorP.model.vo.Attachment;
import com.kh.spring.pd.model.dao.PdDAO;
import com.kh.spring.pd.model.vo.PdVo;

import lombok.extern.log4j.Log4j;
@Service
// @Log4j

public class PdServiceImpl implements PdService{

	@Autowired
	PdDAO pdDAO;
	
	@Override
	public int insertPd(PdVo pd) {
		return pdDAO.insertPd(pd);
	}

	public int pdEnroll(PdVo pd) {
		return pdDAO.insertPd(pd);
	}
	
	// 품목 목록
	@Override
	public List<PdVo> pdlist() throws Exception {
		System.out.println("서비스");
		return pdDAO.pdlist();
	}
	
	// 품목 조회
	@Override
	public PdVo pdView(String procode) throws Exception {
		return pdDAO.pdView(procode);
	}
	
	// 품목 수정 view
//	@Override
//	public void pdModify(PdVo pd) throws Exception{
//		pdDAO.pdModify(pd);
//	}
	
	// 품목 수정 Update
	@Override
	public int pdUpdate(PdVo pd) throws Exception {
		return pdDAO.pdUpdate(pd);
	}
	
	// 품목 삭제
	@Override
	public int pdDelete(String procode) throws Exception {
		return pdDAO.pdDelete(procode);
	}

	@Override
	public List<PdVo> getProductList() {
		
		return pdDAO.getProductList();
	}
	

}
