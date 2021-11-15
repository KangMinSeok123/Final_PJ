package com.kh.spring.AS.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.spring.AS.model.service.ASService;

@Controller
public class ASController {
	
	@Autowired
	ASService asService;
	
	// AS 접수 조회 페이지 이동 및 조회
	@RequestMapping("/AS/ASReceipt.do")
	public String selectASList(Model model) {
		
		List<Map<String, String>> list = asService.selectASList();
		
		int totalAS = asService.selectTotalAS();

		model.addAttribute("list", list);
		model.addAttribute("totalAS", totalAS);
		System.out.println("totalAS : " + totalAS);
		
		return "AS/ASReceipt";
	}
	
	
		
	
}
