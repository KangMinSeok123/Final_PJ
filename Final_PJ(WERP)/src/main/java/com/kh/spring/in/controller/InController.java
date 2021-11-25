package com.kh.spring.in.controller;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.spring.common.Utils;
import com.kh.spring.in.model.service.InService;
import com.kh.spring.in.model.vo.InManagement;
import com.kh.spring.pd.model.vo.PdVo;

@Controller
public class InController {
	
	@Autowired
	InService InService;
	
	// 입고 등록 페이지
	@RequestMapping("/in/in_form.do")
	public String InManagement(Model model, @RequestParam(required=false, defaultValue="null") String searchincode) {
		System.out.println("입고관리 접근확인!");
		
		  
	      // 품목코드 가져오기
	      List<String> proCodeList = InService.getProCodeList();
	      
	      // 품목코드 선택 값 가져오기
	      PdVo selectOneInManagement = InService.selectOneInManagement(searchincode);
	      System.out.println("searchcode 확인 : " + searchincode);
	      
	      System.out.println("proCodeList : " + proCodeList);
	      System.out.println("selectOneInManagement : " + selectOneInManagement);
	      
	      model.addAttribute("proCodeList", proCodeList);
	      model.addAttribute("PdVo", selectOneInManagement);
	      
	      
		return "in/in_form";
	}
	
	// 등록한 정보 저장
	@RequestMapping("/in/inFormEnd.do")
	public String insertForm(InManagement inNum) {
		/*
		 * System.out.println("받아온 정보 확인 : " + inNum);
		 * 
		 * int result = InService.insertIn(inNum);
		 * 
		 * if(result > 0) System.out.println("result > 0");
		 * 
		 */
		return "in/inView";
		
	}
	
	// 입고 현황 조회 페이지
	@RequestMapping("/in/inView.do")
	public String selectinList(@RequestParam(value="cPage", required=false, defaultValue="1")int cPage, Model model) {
		
		// 한 페이지당 게시글 수 
		int numPerPage = 10;
		
		// 현재 페이지의 게시글 수 
		List<Map<String, String>> inlist = InService.selectinList(cPage, numPerPage);
		
		// 전체 게시글 수 
		int totalIn = InService.selectTotalIn();

		// 페이지 처리 Utils 사용하기
		String pageBar = Utils.getPageBar(totalIn, cPage, numPerPage, "inView.do");
		
		model.addAttribute("inlist", inlist);
		model.addAttribute("totalIn", totalIn);
		model.addAttribute("numPerPage", numPerPage);
		model.addAttribute("pageBar", pageBar);
		
		System.out.println("totalIn : " + totalIn);
		System.out.println("pageBar : " + pageBar);
		
		return "in/inView";
	}
	
	// 상품 코드 조회
	   @RequestMapping("/in/getProCode.do")
	   public String getProCode(Model model) {
	      
	      List<String> proCodeList = InService.getProCodeList();
	      
	      System.out.println("proCodeList : " + proCodeList);
	      
	      model.addAttribute("proCodeList", proCodeList);
	      
	      return "in/in_form";
	   }
	
	// 입고 등록 수정 조회 페이지
	@RequestMapping("/in/inUpdateView.do")
	public String updateList(String incode, Model model) {
		
		
		InManagement origininNum = InService.updateView(incode);
		
		model.addAttribute("origininNum", origininNum);
		
		return "in/inUpdateView";
	}
	
	
	 // 입고 수정(수량)
	 @RequestMapping("/in/inUpdate.do")
	 public String updateInManagement(String procode, int inNum, Model model) {
	     
		 PdVo pdvo = new PdVo();
		 pdvo.setInNum(inNum);
		 pdvo.setProcode(procode);
	 
         int result = InService.updateStock(pdvo);
         
         if(result > 0) {
            System.out.println("수정 성공!");
         } else {
            System.out.println("수정 실패!");         
         }
         
         return "redirect:/in/inView.do";      
      }

	

	
	// 입고 등록 삭제 페이지
	@RequestMapping("/in/deleteList.do")
	public String updateInManagement(@RequestParam("incode") String incode, Model model) {

		
		int result = InService.deleteList(incode);
	
		System.out.println("incode: " + incode);
		
		if( result > 0 ) {
			System.out.println("삭제 성공!");
		} else {
			System.out.println("삭제 실패!");
		}
		
		
		return "redirect:/in/inView.do";
	}
	
}
