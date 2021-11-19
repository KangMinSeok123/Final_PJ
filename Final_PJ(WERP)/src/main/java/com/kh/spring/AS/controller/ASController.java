package com.kh.spring.AS.controller;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.spring.AS.model.service.ASService;
import com.kh.spring.AS.model.vo.AS;
import com.kh.spring.common.Utils;

@Controller
public class ASController {
	
	@Autowired
	ASService asService;
	
	// AS 조회 페이지 이동 및 조회
	@RequestMapping("/AS/ASReceipt.do")
	public String selectASList(@RequestParam(value="cPage", required=false, defaultValue="1") int cPage, Model model) {
		
		int numPerPage = 10;
		
		List<Map<String, String>> list = asService.selectASList();
		
		int totalAS = asService.selectTotalAS();
		
		String pageBar = Utils.getPageBar(totalAS, cPage, numPerPage, "ASReceipt.do");

		model.addAttribute("list", list);
		model.addAttribute("totalAS", totalAS);
		model.addAttribute("numPerPage", numPerPage);
		model.addAttribute("pageBar", pageBar);
		
		System.out.println("totalAS : " + totalAS);
		
		return "AS/ASReceipt";
	}
	
	// AS 상세 조회 페이지 이동
	@RequestMapping("/AS/ASView.do")
	public String viewAS(@RequestParam int asCode, Model model) {
			
		AS as = asService.selectOneAS(asCode);		
		
		model.addAttribute("AS", as);
		
		System.out.println("AS : " + as);
		
		return "AS/ASView";
	}
	
	// AS stage 수정
	@RequestMapping("/AS/updateStage.do")
	public String updateStage(AS as, String stage, Model model) {
		
		System.out.println("asCode : " + as.getAsCode());
		
		as.setAsStage(stage);
		
		int result = asService.updateStage(as);	
		
		System.out.println("stage : " + stage);
		
		if(result > 0) {
			System.out.println("수정 성공");
		} else {
			System.out.println("수정 실패");
		}
		
		return "redirect:/AS/ASReceipt.do";		
	}
	
	// AS expectedDate 수정
	@RequestMapping("/AS/updateExpectedDate.do")
	public String updateExpectedDate(AS as, Date date, Model model) {
		
		System.out.println("Date : " + date);
		System.out.println("expectedDate 수정의 AS : " + as);
		
		as.setAsExpectedDate(date);
		
		int result = asService.updateExpectedDate(as);	
		
		if(result > 0) {
			System.out.println("수정 성공");
		} else {
			System.out.println("수정 실패");
		}
		
		return "redirect:/AS/ASReceipt.do";	
		
	}
	
	// AS 삭제
	@RequestMapping("/AS/deleteAS.do")
	public String deleteAS(@RequestParam int asCode, Model model) {
		
		int result = asService.deleteAS(asCode);
		
		
		if(result > 0) {
			System.out.println("삭제 성공");
		} else {
			System.out.println("삭제 실패");
		}
		
		return "redirect:/AS/ASReceipt.do";
	}
	
	
}
