package spring.mvc.teamProject.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.teamProject.service.InquiryTransferService;
import spring.mvc.teamProject.service.RegisterReleaseService;

@Controller
public class InquiryTransferController {
	
	@Autowired
	RegisterReleaseService service;
	@Autowired
	InquiryTransferService IT_service;
	
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
		
		//IT_service.TransactionDetails_Table(req, model);
		
		return "InquiryTransfer/TransactionDetails_Table";
	}
	
	//계좌이체 AccountTransfer.cc
	@RequestMapping("/AccountTransfer.cc")
	public String AccountTransfer(HttpServletRequest req,Model model) {
		logger.info("url ==> /AccountTransfer");
		service.AccountNomalList(req, model);
		return "InquiryTransfer/AccountTransfer";
	}
	//다계좌이체 MultiAccountTransfer.cc
	@RequestMapping("/MultiAccountTransfer.cc")
	public String MultiAccountTransfer(HttpServletRequest req,Model model) {
		logger.info("url ==> /MultiAccountTransfer");
		return "InquiryTransfer/MultiAccountTransfer";
	}
	//적금추가납입 ISPAdd.cc
	@RequestMapping("/ISPAdd.cc")
	public String ISPAdd(HttpServletRequest req,Model model) {
		logger.info("url ==> /ISPAdd");
		return "InquiryTransfer/ISPAdd";
	}
	//자동이체신청 AutoTransferRequest.cc
	@RequestMapping("/AutoTransferRequest.cc")
	public String AutoTransferRequest(HttpServletRequest req,Model model) {
		logger.info("url ==> /AutoTransferRequest");
		return "InquiryTransfer/AutoTransferRequest";
	}
	//자동이체조회 AutoTransferList.cc
	@RequestMapping("/AutoTransferList.cc")
	public String AutoTransferList(HttpServletRequest req,Model model) {
		logger.info("url ==> /AutoTransferList");
		return "InquiryTransfer/AutoTransferList";
	}
	//자동이체조회 AutoTransferList.cc
	@RequestMapping("/AutoTransferChangeRank.cc")
	public String AutoTransferChangeRank(HttpServletRequest req,Model model) {
		logger.info("url ==> /AutoTransferChangeRank");
		return "InquiryTransfer/AutoTransferChangeRank";
	}
	
		
}
