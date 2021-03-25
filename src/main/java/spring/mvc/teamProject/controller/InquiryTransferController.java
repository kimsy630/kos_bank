package spring.mvc.teamProject.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.teamProject.service.RegisterReleaseService;

@Controller
public class InquiryTransferController {
	
	@Autowired
	RegisterReleaseService service;
	
	private static final Logger logger = LoggerFactory.getLogger(InquiryTransferController.class);
	
	//계좌조회 AccountCheck.cc
	@RequestMapping("/AccountCheck.cc")
	public String AccountCheck(HttpServletRequest req,Model model) {
		logger.info("url ==> /AccountCheck");
		return "InquiryTransfer/AccountCheck";
	}
	//거래내역 조회 TransactionDetails.do
	@RequestMapping("/TransactionDetails.cc")// 로그인영역으로 변경할 것!!!
	public String TransactionDetails(HttpServletRequest req,Model model) {
		logger.info("url ==> /TransactionDetails");
		return "InquiryTransfer/TransactionDetails";
	}
	//대출 테이블 LoansTable.do
	@RequestMapping("/LoansTable.cc")// ajax에 들어갈 페이지
	public String Loanstable(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoansTable");
		return "InquiryTransfer/LoansTable";
	}
	//적금 테이블 IS_Table.do
	@RequestMapping("/IS_Table.cc")// ajax에 들어갈 페이지   Installment_SavingsTable
	public String Installment_SavingsTable(HttpServletRequest req,Model model) {
		logger.info("url ==> /IS_Table");
		return "InquiryTransfer/IS_Table";
	}
	//펀드계좌 테이블 FundTable.do
	@RequestMapping("/FundTable.cc")// ajax에 들어갈 페이지
	public String FundTable(HttpServletRequest req,Model model) {
		logger.info("url ==> /FundTable");
		return "InquiryTransfer/FundTable";
	}
	//정지계좌 테이블 StopTable.do
	@RequestMapping("/StopTable.cc")// ajax에 들어갈 페이지
	public String StopTable(HttpServletRequest req,Model model) {
		logger.info("url ==> /StopTable");
		return "InquiryTransfer/StopTable";
	}
	//휴면계좌 테이블 SleepTable.do
	@RequestMapping("/SleepTable.cc")// ajax에 들어갈 페이지
	public String SleepTable(HttpServletRequest req,Model model) {
		logger.info("url ==> /SleepTable");
		return "InquiryTransfer/SleepTable";
	}
	//전체계좌 테이블 AllTable.do	
	@RequestMapping("/AllTable.cc")// ajax에 들어갈 페이지
	public String AllTable(HttpServletRequest req,Model model) {
		logger.info("url ==> /AllTable");
		return "InquiryTransfer/AllTable";
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
