package spring.mvc.teamProject.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class FundingController {
	private static final Logger logger = LoggerFactory.getLogger(CommonController.class);
	// 펀드조회 - 펀트리스트
	@RequestMapping("/FundList.cc")
	public String FundList(HttpServletRequest req,Model model) {
		logger.info("url ==> /FundList");
		return "Fund/FundList";
	}
	// 펀드조회 - 상세페이지, 펀드 구매하러 가기 
	@RequestMapping("/FundDetail.cc")
	public String FundDetail(HttpServletRequest req,Model model) {
		logger.info("url ==> /FundDetail");
		return "Fund/FundDetail";
	}
	// 펀드조회 - 펀드 구매 처리 - 펀딩하기
	@RequestMapping("/FundAction.cc")
	public String FundAction(HttpServletRequest req,Model model) {
		logger.info("url ==> /FundAction");
		return "Fund/FundAction";
	}
	// 펀드조회 - 펀드 구매 성공
	@RequestMapping("/FundActionSuccess.cc")
	public String FundActionSuccess(HttpServletRequest req,Model model) {
		logger.info("url ==> /FundActionSuccess");
		return "Fund/FundActionSuccess";
	}
	// 펀드조회 - 펀드 구매 실패
	@RequestMapping("/FundActionFail.cc")
	public String FundActionFail(HttpServletRequest req,Model model) {
		logger.info("url ==> /FundActionFail");
		return "Fund/FundActionFail";
	}
	// 펀드등록 - 펀드를 사용자가 신청하면 관리자가 승인해야 펀드모집이 시작됨
	@RequestMapping("/FundAdd.cc")
	public String FundAdd(HttpServletRequest req,Model model) {
		logger.info("url ==> /FundAdd");
		return "Fund/FundAdd";
	}
	// 승인요청리스트 - 승인/거절
	@RequestMapping("/AdminFund.cc")
	public String AdminFund(HttpServletRequest req,Model model) {
		logger.info("url ==> /AdminFund");
		return "Fund/AdminFund";
	}
}
