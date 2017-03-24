package com.eagle.man_in_black.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CeoMypageController {
	Logger loger = LoggerFactory.getLogger(this.getClass());
	
	@RequestMapping("dudwo.mib")
	public ModelAndView code_msg1111(){
		
		loger.debug("=Controller ===========================");
		loger.debug("codeMSvc === " + "김옥지");
		loger.debug("============================");
		
		ModelAndView mav = new ModelAndView("mypage/ceomypage/NewFile");
		mav.addObject("msg", "김옥지");
		
		return mav;
		
	}
}
