package spring.mvc.teamProject.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.teamProject.service.AutoTransferService;
import spring.mvc.teamProject.service.LoanCenterService;

@Controller
public class LoanCenterController {

	private static final Logger logger = LoggerFactory.getLogger(LoanCenterController.class); // 박서하 branch test

	@Autowired
	LoanCenterService loanservice;
	
	@Autowired
	AutoTransferService Aservice;
	
	// 박서하
	// 대출계좌 조회
	@RequestMapping("/LoanAccountCheck.do")
	public String LoanAccountCheck(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoanAccountCheck");
		
		loanservice.LoanAccountCheck(req, model);
		
		return "LoanCenter/LoanAccountCheck";
	}
	
	// 박서하
	// 대출계좌 상세조회
	@RequestMapping("/LoanAccountDetail.do")
	public String LoanAccountDetail(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoanAccountDetail");
		
		loanservice.LoanAccountDetail(req, model);
		
		return "LoanCenter/LoanAccountDetail";
	}
	
	// 박서하
	// 대출해지현황 조회
	@RequestMapping("/LoanCloseCheck.do")
	public String LoanCloseCheck(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoanCloseCheck");
		
		loanservice.LoanCloseCheck(req, model);
		
		return "LoanCenter/LoanCloseCheck";
	}
	
	// 박서하
	// 대출해지현황 상세조회
	@RequestMapping("/LoanCloseDetail.do")
	public String LoanCloseDetail(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoanCloseDetail");
		
		loanservice.LoanCloseDetail(req, model);
		
		return "LoanCenter/LoanCloseDetail";
	}
	
	// 박서하
	// 대출원금 조회
	@RequestMapping("/LoanPrincipalCheck.do")
	public String LoanPrincipalCheck(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoanPrincipalCheck");
		
		loanservice.LoanPrincipalCheck(req, model);
		
		return "LoanCenter/LoanPrincipalCheck";
	}
	
	// 박서하
	// 대출원금 조회(내부)
	@RequestMapping("/LoanPrincipalCheckIn.do")
	public String LoanPrincipalCheckIn(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoanPrincipalCheckIn");

		loanservice.LoanPrincipalCheckIn(req, model);
		
		return "LoanCenter/LoanPrincipalCheckIn";
	}
	
	// 박서하
	// 대출원금 상환 실행
	@RequestMapping("/LoanPrincipalPay.do")
	public String LoanPrincipalPay(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoanPrincipalPay");
		
		loanservice.LoanPrincipalPay(req, model);
		
		return "LoanCenter/LoanPrincipalPay";
	}
	
	// 박서하
	// 대출이자 조회
	@RequestMapping("/LoanRateCheck.do")
	public String LoanRateCheck(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoanRateCheck");
		
		loanservice.LoanRateCheck(req, model);
		
		return "LoanCenter/LoanRateCheck";
	}
	
	// 박서하
	// 대출이자 조회(내부)
	@RequestMapping("/LoanRateCheckIn.do")
	public String LoanRateCheckIn(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoanRateCheckIn");
		
		loanservice.LoanRateCheckIn(req, model);
		
		return "LoanCenter/LoanRateCheckIn";
	}
	
	// 박서하
	// 대출이자 납부
	@RequestMapping("/LoanRatePay.do")
	public String LoanRatePay(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoanRatePay");
		
		loanservice.LoanRatePay(req, model);
		
		return "LoanCenter/LoanRatePay";
	}

	// 박서하
	// 신규대출 신청
	@RequestMapping("/LoanApplication.do")
	public String LoanApplication(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoanApplication");
		
		loanservice.LoanApplication(req, model);
		
		return "LoanCenter/LoanApplication";
	}
	
	// 박서하
	// 신규대출 신청 실행
	@RequestMapping("/LoanApplicationAction.do")
	public String LoanApplicationAction(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoanApplicationAction");
		
		loanservice.LoanApplicationAction(req, model);
		
		return "LoanCenter/LoanApplicationAction";
	}
	
	// 박서하
	// 자동이체 실행 test 
	@Scheduled(cron="1/5 * * * * *") // 5초 // 5분마다 (cron="0 */5 * * * *")
	  public void scheduleTest() {
	   logger.info("대출 test");
	   loanservice.AutoTransferLoan();
	}
}
