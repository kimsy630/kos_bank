package spring.mvc.teamProject.controller;

import java.util.Map;


import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import spring.mvc.teamProject.service.AutoTransferService;
import spring.mvc.teamProject.service.InquiryTransferService;
import spring.mvc.teamProject.service.LimitService;
import spring.mvc.teamProject.service.RegisterReleaseService;
import spring.mvc.teamProject.vo.TransferVO;

@Controller
public class InquiryTransferController {
	
	@Autowired
	RegisterReleaseService service;
	
	@Autowired
	InquiryTransferService IT_service;
	
	@Autowired
	InquiryTransferService Iservice;
	
	@Autowired
	AutoTransferService Aservice;
	
	@Autowired
	LimitService lservice;
	
	private static final Logger logger = LoggerFactory.getLogger(InquiryTransferController.class);
	
	//계좌조회 AccountCheck.cc 정하늘
	@RequestMapping("/AccountCheck.do")
	public String AccountCheck(HttpServletRequest req,Model model) {
		logger.info("url ==> /AccountCheck");
		
		return "InquiryTransfer/AccountCheck";
	}
	
	//계좌조회 AccountTable.do 정하늘
	@RequestMapping("/AccountTable.do")
	public String AccountTable(HttpServletRequest req,Model model) {
		logger.info("url ==> /AccountTable");
		
		IT_service.AccountTable(req, model);

		return "InquiryTransfer/AccountTable";
	}
	
	//대출 테이블 LoansTable.do 정하늘
	@RequestMapping("/LoansTable.do")// ajax에 들어갈 페이지
	public String Loanstable(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoansTable");
		
		IT_service.LoansTable(req, model);
		
		return "InquiryTransfer/LoansTable";
	}
	
	//적금 테이블 IS_Table.do 정하늘
	@RequestMapping("/IS_Table.do")// ajax에 들어갈 페이지   Installment_SavingsTable
	public String Installment_SavingsTable(HttpServletRequest req,Model model) {
		logger.info("url ==> /IS_Table");
		
		IT_service.IS_Table(req, model);
		
		return "InquiryTransfer/IS_Table";
	}
	//펀드계좌 테이블 FundTable.do 정하늘
	@RequestMapping("/FundTable.do")// ajax에 들어갈 페이지
	public String FundTable(HttpServletRequest req,Model model) {
		logger.info("url ==> /FundTable");
		
		IT_service.fund_Table(req, model);
		
		return "InquiryTransfer/FundTable";
	}
	// 예금계좌 테이블 DepositTable.do 정하늘
	@RequestMapping("/DepositTable.do")// ajax에 들어갈 페이지
	public String DepositTable(HttpServletRequest req,Model model) {
		logger.info("url ==> /DepositTable");
		
		IT_service.DepositTable(req, model);
		
		return "InquiryTransfer/DepositTable";
	}
	//정지/휴면계좌 테이블 StopSleepTable.do 정하늘
	@RequestMapping("/StopSleepTable.do")// ajax에 들어갈 페이지
	public String StopTable(HttpServletRequest req,Model model) {
		logger.info("url ==> /StopSleepTable");
		
		IT_service.StopSleepTable(req, model);
		
		return "InquiryTransfer/StopSleepTable";
	}
	
	//전체계좌 테이블 AllTable.do	 정하늘
	@RequestMapping("/AllTable.do")// ajax에 들어갈 페이지
	public String AllTable(HttpServletRequest req,Model model) {
		logger.info("url ==> /AllTable");
		
		IT_service.AllTable(req, model);
		
		return "InquiryTransfer/AllTable";
	}
	//거래내역 조회 TransactionDetails.do 정하늘
	@RequestMapping("/TransactionDetails.do")
	public String TransactionDetails(HttpServletRequest req,Model model) {
		logger.info("url ==> /TransactionDetails");
		
		IT_service.TransactionDetails(req, model);
		
		return "InquiryTransfer/TransactionDetails";
	}
	//거래내역 조회(상세내역) TransactionDetails_Table.do 정하늘
	@RequestMapping("/TransactionDetails_Table.do")
	public String TransactionDetails_Table(HttpServletRequest req,Model model) {
		logger.info("url ==> /TransactionDetails_Table");
		
		IT_service.TransactionDetails_Table(req, model);
		
		return "InquiryTransfer/TransactionDetails_Table";
	}
	
	//계좌이체 AccountTransfer.cc
	//김소림
	//계좌이체 페이지 AccountTransfer.cc 
	@RequestMapping("/AccountTransfer.do")
	public String AccountTransfer(HttpServletRequest req,Model model) {
		logger.info("url ==> /AccountTransfer");
		service.AccountInoutLoansType(req, model);
		return "InquiryTransfer/AccountTransfer";
	}
	//김소림
	//계좌이체 ajax페이지 TransferTable.cc
	@RequestMapping("/TransferTable.cc")
	public String TransferTable(HttpServletRequest req,Model model) {
		logger.info("url ==> /TransferTable");
		Iservice.transferTable(req, model);
		return "InquiryTransfer/TransferTable";
	}
	
	//김소림
	//계좌이체 Action TransferTable.cc
	@RequestMapping("/TransferAction.cc")
	public String TransferAction(HttpServletRequest req,Model model) {
		logger.info("url ==> /TransferTable");
		Iservice.transferAction(req, model);
		return "InquiryTransfer/TransferAction";
	}
	// 보류
	//다계좌이체 MultiAccountTransfer.cc
	@RequestMapping("/MultiAccountTransfer.cc")
	public String MultiAccountTransfer(HttpServletRequest req,Model model) {
		logger.info("url ==> /MultiAccountTransfer");
		return "InquiryTransfer/MultiAccountTransfer";
	}
	//김소림
	//적금추가납입 ISPAdd.cc
	@RequestMapping("/ISPAdd.cc")
	public String ISPAdd(HttpServletRequest req,Model model) {
		logger.info("url ==> /ISPAdd");
		return "InquiryTransfer/ISPAdd";
	}
	//김소림
	//자동이체신청 AutoTransferRequest.cc 
	@RequestMapping("/AutoTransferRequest.do")
	public String AutoTransferRequest(HttpServletRequest req,Model model) {
		logger.info("url ==> /AutoTransferRequest");
		service.AccountInoutType(req, model);
		return "InquiryTransfer/AutoTransferRequest";
	}
	//김소림
	//자동이체신청액션 AutoTransferRequest.cc
	@RequestMapping("/AutoTransferRequestAction.cc")
	public String AutoTransferAction(HttpServletRequest req,Model model) {
		logger.info("url ==> /AutoTransferRequestAction");
		Aservice.AutoTransferAdd(req, model);
		return "InquiryTransfer/AutoTransferRequestAction";
	}
	//김소림
	//자동이체조회 AutoTransferList.cc
	@RequestMapping("/AutoTransferList.do")
	public String AutoTransferList(HttpServletRequest req,Model model) {
		logger.info("url ==> /AutoTransferList");
		service.AccountNomalList(req, model);
		return "InquiryTransfer/AutoTransferList";
	}
	//김소림
	//자동이체조회ajax AutoTransferListTable.cc
	@RequestMapping("/AutoTransferListTable.cc")
	public String AutoTransferListTable(HttpServletRequest req,Model model) {
		logger.info("url ==> /AutoTransferListTable");
		Aservice.AutoTransferList(req, model);
		return "InquiryTransfer/AutoTransferListTable";
	}
	//김소림
	//자동이체해지 AutoTransferDelete.cc
	@RequestMapping("/AutoTransferDelete.cc")
	public String AutoTransferDelete(HttpServletRequest req,Model model) {
		logger.info("url ==> /AutoTransferDelete");
		Aservice.AutoTransferDeleteList(req, model);
		return "InquiryTransfer/AutoTransferDelete";
	}
	
	//김소림
	//자동이체해지 AutoTransferDeleteAction.do
	@RequestMapping("/AutoTransferDeleteAction.do")
	public String AutoTransferDeleteAction(HttpServletRequest req,Model model) {
		logger.info("url ==> /AutoTransferDeleteAction");
		return "InquiryTransfer/AccountPWChk";
	}
	//김소림
	//자동이체해지 AutoTransferDeleteStart.do
	@RequestMapping("/AutoTransferDeleteStart.do")
	public String AutoTransferDeleteStart(HttpServletRequest req,Model model) {
		logger.info("url ==> /AutoTransferDeleteStart");
		Aservice.AutoTransferDeleteChk(req, model);
		return "InquiryTransfer/AutoTransferDeleteChk";
	}
	
	//김소림(예정)
	//자동이체순위조정 AutoTransferChangeRank.cc
	@RequestMapping("/AutoTransferChangeRank.cc")
	public String AutoTransferChangeRank(HttpServletRequest req,Model model) {
		logger.info("url ==> /AutoTransferChangeRank");
		
		return "InquiryTransfer/AutoTransferChangeRank";
	}
	//김소림
	// 자동이체 실행 test 
	@Scheduled(cron="0 */1 * * * *")
	  public void scheduleTest() {
	   logger.info("이체 test");
	  //Aservice.AutoTransferPractice();
	}
	//
	//@Scheduled(cron="0 */5 * * * *")
	  //public void scheduleTest() {
	  // logger.info("이체 test");
	 // Aservice.AutoTransferPractice();
	//}
	
	
	//김세엽
	//한도변경
	@RequestMapping("/AccountLimit.do")
	public String AccountLimit(HttpServletRequest req,Model model) {
		logger.info("url ==> /AccountLimit");
		lservice.AccountLimitInfo(req, model);
		return "InquiryTransfer/AccountLimit";
	}
	
	//김세엽
	//한도조회ajax
	@RequestMapping("/AccountLimitSearch.do")
	public String AccountLimitSearch(HttpServletRequest req,Model model) {
		logger.info("url ==> /AccountLimitSearch");
		lservice.AccountLimitSearch(req, model);
		return "InquiryTransfer/AccountLimitSearch";
	}
	
	//김세엽
	//이체한도 페이지 ajax
	@RequestMapping("/AccountLimitChangeView.do")
	public String AccountLimitChangeView(HttpServletRequest req,Model model) {
		logger.info("url ==> /AccountLimitChangeView");
		model.addAttribute("account", req.getParameter("account"));
		return "InquiryTransfer/AccountLimitChangeView";
	}

	//김세엽
	//이체한도신청
	@RequestMapping("/AccountLimitAction.do")
	public String AccountLimitAction(HttpServletRequest req,Model model) {
		logger.info("url ==> /AccountLimitAction");
		lservice.AccountLimitAction(req, model);
		return "InquiryTransfer/AccountLimitAction";
	}
	//김세엽
	// 자동이체 실행 test 
	@Scheduled(cron="0/10 * * * * *")
	  public void limitSchedule() {
	   logger.info("limitSchedule");
	   lservice.limitSchedule();
	}
}
