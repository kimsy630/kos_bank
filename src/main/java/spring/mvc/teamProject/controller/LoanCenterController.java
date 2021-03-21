package spring.mvc.teamProject.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoanCenterController {
	private static final Logger logger = LoggerFactory.getLogger(LoanCenterController.class); // 박서하 branch test
	
	// 박서하
	//대출계좌 조회
	@RequestMapping("/LoanAccountCheck.cc")
	public String LoanAccountCheck(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoanAccountCheck");
		return "LoanCenter/LoanAccountCheck";
	}
	
	// 박서하
	//대출계좌 상세조회
	@RequestMapping("/LoanAccountDetail.cc")
	public String LoanAccountDetail(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoanAccountDetail");
		return "LoanCenter/LoanAccountDetail";
	}
	
	// 박서하
	//대출해지현황 조회
	@RequestMapping("/LoanCloseCheck.cc")
	public String LoanCloseCheck(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoanCloseCheck");
		return "LoanCenter/LoanCloseCheck";
	}
	
	// 박서하
	//대출해지현황 상세조회
	@RequestMapping("/LoanCloseDetail.cc")
	public String LoanCloseDetail(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoanCloseDetail");
		return "LoanCenter/LoanCloseDetail";
	}
	
	// 박서하
	//신규대출 신청
	@RequestMapping("/LoanApplication.cc")
	public String LoanApplication(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoanApplication");
		return "LoanCenter/LoanApplication";
	}
	
	// 박서하
	//대출원금 조회
	@RequestMapping("/LoanPrincipalCheck.cc")
	public String LoanPrincipalCheck(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoanPrincipalCheck");
		return "LoanCenter/LoanPrincipalCheck";
	}
	
	// 박서하
	//대출원금 조회(내부)
	@RequestMapping("/LoanPrincipalCheckIn.cc")
	public String LoanPrincipalCheckIn(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoanPrincipalCheckIn");
		return "LoanCenter/LoanPrincipalCheckIn";
	}
	
	// 박서하
	//대출원금 상환정보
	@RequestMapping("/LoanPrincipalInfo.cc")
	public String LoanPrincipalInfo(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoanPrincipalInfo");
		return "LoanCenter/LoanPrincipalInfo";
	}
	
	// 박서하
	//대출원금 상환---------------미완성
	@RequestMapping("/LoanPrincipalPay.cc")
	public String LoanPrincipalPay(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoanPrincipalPay");
		return "LoanCenter/LoanPrincipalPay";
	}
	
	// 박서하
	//대출이자 조회
	@RequestMapping("/LoanRateCheck.cc")
	public String LoanRateCheck(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoanRateCheck");
		return "LoanCenter/LoanRateCheck";
	}
	
	// 박서하
	//대출이자 조회(내부)
	@RequestMapping("/LoanRateCheckIn.cc")
	public String LoanRateCheckIn(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoanRateCheckIn");
		return "LoanCenter/LoanRateCheckIn";
	}
	
	// 박서하
	//대출이자 납부정보
	@RequestMapping("/LoanRateInfo.cc")
	public String LoanRateInfo(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoanRateInfo");
		return "LoanCenter/LoanRateInfo";
	}
	
	// 박서하
	//대출이자 납부---------------미완성
	@RequestMapping("/LoanRatePay.cc")
	public String LoanRatePay(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoanRatePay");
		return "LoanCenter/LoanRatePay";
	}
	
	// 박서하
	//대출자동이체---------------미완성
}
