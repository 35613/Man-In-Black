package com.eagle.men_in_black.controller;

import static org.hamcrest.CoreMatchers.instanceOf;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.eagle.men_in_black.model.DetailDto;
import com.eagle.men_in_black.model.MainDto;
import com.eagle.men_in_black.model.UserMypageDto;
import com.eagle.men_in_black.service.DetailSvc;
import com.eagle.men_in_black.service.UserMypageSvc;

@Controller
public class DetailController {
	Logger loger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private DetailSvc detailSvc;
	
	@RequestMapping("detail.mib")
	public ModelAndView detail(HttpServletRequest res,HttpServletResponse rep){
		ModelAndView mav = new ModelAndView("category/tiles/detail/Detail");

		int PRO_SEQ = Integer.parseInt(res.getParameter("PRO_SEQ"));

		List<DetailDto> list = detailSvc.do_selectProductDetail(PRO_SEQ);
		List<DetailDto> listColor = detailSvc.do_selectProductColor(PRO_SEQ);
		List<DetailDto> listSize = detailSvc.do_selectProductSize(PRO_SEQ);
		List<DetailDto> reviewList = detailSvc.do_selectProductReviewList(PRO_SEQ);
		mav.addObject("list", list);
		mav.addObject("listColor", listColor);
		mav.addObject("listSize", listSize);
		mav.addObject("reviewList", reviewList);
		
		return mav;
	}

	@RequestMapping("review.mib")
	public ModelAndView review(HttpServletRequest res, HttpServletResponse rep) {
		ModelAndView mav = new ModelAndView("category/tiles/detail/pop/Review");
		
		int REV_SEQ = Integer.parseInt(res.getParameter("REV_SEQ"));
		
		DetailDto detaildto = detailSvc.do_selectReviewDetail(REV_SEQ);
		mav.addObject("detaildto", detaildto);

		return mav;
	}
	
	@RequestMapping("reviewReply.mib")
	public ModelAndView reviewReply(HttpServletRequest res, HttpServletResponse rep) {
		ModelAndView mav = new ModelAndView("category/tiles/detail/pop/ReviewReply");
		
		int REV_SEQ = Integer.parseInt(res.getParameter("REV_SEQ"));
		
		DetailDto detaildto = detailSvc.do_selectReviewDetail(REV_SEQ);
		mav.addObject("detailDto", detaildto);

		return mav;
	}
	
	@RequestMapping("QnADetail.mib")
	public ModelAndView QnADetail() {

		loger.debug("=Controller ===========================");
		loger.debug("codeMSvc === " + "앙 기무띠~");
		loger.debug("============================");

		ModelAndView mav = new ModelAndView("category/tiles/detail/pop/Q&ADetail");
		mav.addObject("msg", "김옥지");

		return mav;
	}
	
	@RequestMapping("QnAWrite.mib")
	public ModelAndView QnAWrite() {

		loger.debug("=Controller ===========================");
		loger.debug("codeMSvc === " + "앙 기무띠~");
		loger.debug("============================");

		ModelAndView mav = new ModelAndView("category/tiles/detail/pop/Q&AWrite");
		mav.addObject("msg", "김옥지");

		return mav;
	}
	
	@RequestMapping("BuyPop.mib")
	public ModelAndView BuyPop(HttpServletRequest res, HttpServletResponse rep) {
		ModelAndView mav = new ModelAndView("category/tiles/detail/pop/BuyPop");
		
		int PRO_SEQ = Integer.parseInt(res.getParameter("PRO_SEQ"));
		
		List<DetailDto> list = detailSvc.do_buyProductPop(PRO_SEQ);
		List<DetailDto> listColor = detailSvc.do_buyProductColorPop(PRO_SEQ);
		mav.addObject("PRO_SEQ", PRO_SEQ);
		mav.addObject("list", list);
		mav.addObject("listColor", listColor);
		
		return mav;
	}
	
	@RequestMapping("Detail_Buy_Info.mib")
	public ModelAndView Detail_Buy_Info() {

		loger.debug("=Controller ===========================");
		loger.debug("codeMSvc === " + "앙 기무띠~");
		loger.debug("============================");

		ModelAndView mav = new ModelAndView("category/tiles/detail/Detail_Buy_Info");
		mav.addObject("msg", "김옥지");

		return mav;
	}
}
