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
	//김소림
	//계좌이체 페이지 AccountTransfer.cc 
	@RequestMapping("/AccountTransfer.cc")
	public String AccountTransfer(HttpServletRequest req,Model model) {
		logger.info("url ==> /AccountTransfer");
		service.AccountNomalList(req, model);
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
	@RequestMapping("/AutoTransferRequest.cc")
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
	//김소림(예정)	
	//자동이체조회 AutoTransferList.cc
	@RequestMapping("/AutoTransferList.cc")
	public String AutoTransferList(HttpServletRequest req,Model model) {
		logger.info("url ==> /AutoTransferList");
		return "InquiryTransfer/AutoTransferList";
	}
	//김소림(예정)
	//자동이체조회 AutoTransferList.cc
	@RequestMapping("/AutoTransferChangeRank.cc")
	public String AutoTransferChangeRank(HttpServletRequest req,Model model) {
		logger.info("url ==> /AutoTransferChangeRank");
		return "InquiryTransfer/AutoTransferChangeRank";
	}
	//김소림
	// 자동이체 실행 test 
<<<<<<< HEAD
	@Scheduled(cron="0 */5 * * * *")
	  public void scheduleTest() {
	   logger.info("이체 test");
	  Aservice.AutoTransferPractice();
	}
=======
	@Scheduled(cron="* */3 * * * *")
	   public void scheduleTest() {
	   //logger.info("이체 test");
	   //Aservice.AutoTransferPractice();
   }
>>>>>>> 46f5b653977c4fa1a2309020a2d67610237a7961
		
}
