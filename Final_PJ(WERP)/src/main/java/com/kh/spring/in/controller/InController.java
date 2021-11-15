package com.kh.spring.in.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kh.spring.in.model.vo.InManagement;
import com.kh.spring.in.model.service.InService;

@Controller
public class InController {
	
	@Autowired
	InService InService;
	
	@RequestMapping("/in/in_form.do")
	public String InManagement() {
		System.out.println("입고관리 접근확인!");
		
		return "in/in_form";
	}
	
	
	@RequestMapping("/in/inFormEnd.do")
	public String insertForm(InManagement inNum) {
		
		System.out.println("받아온 정보 확인 : " + inNum);
		
		int result = InService.insertIn(inNum);
		
		if(result > 0)
			System.out.println("result > 0");
		/*
		try {
			// 1. 서비스로 비즈니스(업무) 로직 수행하기
			int result = InService.insertIn(inNum);
			
			// 2. 처리 결과에 따른 화면 처리
			String loc = "/"; // welcome-file
			String msg = "";
			
			if( result > 0 ) {
				msg = "입고 등록 성공!";
			} else {
				msg = "입고 등록 실패!";
			}
			
			
			model.addAttribute("loc", loc);
			model.addAttribute("msg", msg);
			
		} catch( Exception e ) {
			
			System.out.println("입고 등록 시 에러 발생!");
			System.out.println("Err :: " + e.getMessage());
			
		}*/
		
		return "index";
		
	}
	
	
}