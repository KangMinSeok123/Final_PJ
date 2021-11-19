package com.kh.spring.pd.controller;

import java.util.logging.Logger;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.spring.pd.model.service.PdService;
import com.kh.spring.pd.model.vo.PdVo;

@Controller
public class PdController {

	// private static final Logger logger = (Logger) LoggerFactory.getLogger(PdController.class);

	@Autowired
	private PdService pdService;
	
	/* 상품 등록 페이지 접속 */
	@RequestMapping(value = "/pd/pdManage", method = RequestMethod.GET)
	public String pdManageGET() throws Exception{
		// logger.info("상품 등록 페이지 접속");
		
		return "pd/pdView";
	}
	
    /* 상품 등록 */
	@RequestMapping("/pd/pdEnroll")
	public String pdPOST(PdVo pd, RedirectAttributes rttr) {
		
		
		System.out.println(pd);
		
		pdService.pdEnroll(pd);
		
		rttr.addFlashAttribute("enroll_result", pd.getProname());
		
		return "redirect:/pd/pdManage";
	}
}
