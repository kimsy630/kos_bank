package spring.mvc.teamProject.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import spring.mvc.teamProject.service.FundingService;

@Controller
public class FundingController {
	private static final Logger logger = LoggerFactory.getLogger(CommonController.class);
	
	@Autowired
	FundingService FS;
	
	// 펀드조회 - 펀트리스트
	@RequestMapping("/FundList.cc")
	public String FundList(HttpServletRequest req,Model model) {
		logger.info("url ==> /FundList");
		return "Fund/FundList";
	}
	// 펀드조회 - 펀트리스트
	@RequestMapping("/FundData.cc")
	public String FundData(HttpServletRequest req,Model model) {
		logger.info("url ==> /FundData");
		
		FS.getFundingInfo(req, model);
		
		return "Fund/FundData";
	}
	// 펀드조회 - 상세페이지
	@RequestMapping("/FundDetail.cc")
	public String FundDetail(HttpServletRequest req,Model model) {
		logger.info("url ==> /FundDetail");
		
		FS.getFundingContent(req, model);
		
		return "Fund/FundDetail";
	}
	// 펀드조회 - 댓글작성 처리
	@RequestMapping("/FundCommentWriteAction.cc")
	public String FundCommentWriteAction(HttpServletRequest req,Model model) {
		logger.info("url ==> /FundCommentWriteAction");
		
		FS.writeComment(req, model);
		
		return "Fund/FundCommentWriteAction";
	}
	// 펀드조회 - 펀드 구매 화면
	@RequestMapping("/FundBuy.cc")
	public String FundBuy(HttpServletRequest req,Model model) {
		logger.info("url ==> /FundBuy");
		
		FS.getKey(req, model);
		
		return "Fund/FundBuy";
	}
	// 펀드조회 - 펀드 구매 처리
	@RequestMapping("/FundBuyAction.cc")
	public String FundBuyAction(HttpServletRequest req,Model model) {
		logger.info("url ==> /FundBuyAction");
		
		FS.buyFund(req, model);
		
		return "Fund/FundBuyAction";
	}
	
	// 펀드등록 - 펀드 등록 화면
	@RequestMapping("/FundAdd.cc")
	public String FundAdd(HttpServletRequest req,Model model) {
		logger.info("url ==> /FundAdd");
		return "Fund/FundAdd";
	}
	
	// 펀드등록 - 펀드 등록 처리
	@RequestMapping(value= "FundAddAction", method=RequestMethod.POST)
	public String FundAddAction(MultipartHttpServletRequest req, Model model) throws IOException {
		logger.info("url ==> /FundAddAction");
		
		FS.addFund(req, model);
		
		return "Fund/FundAddAction";
	}
	// 펀드등록 - 타은행펀드수수료
		@RequestMapping("/elk.cc")
		public String elk(HttpServletRequest req,Model model) {
			logger.info("url ==> /elk");
			return "Fund/elk";
		}
	
}
