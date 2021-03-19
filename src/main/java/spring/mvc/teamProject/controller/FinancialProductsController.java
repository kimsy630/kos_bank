package spring.mvc.teamProject.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FinancialProductsController {
	private static final Logger logger = LoggerFactory.getLogger(FinancialProductsController.class);
	
	
	
	//개인대출
	@RequestMapping("/personalLoan.cc")
	public String personalLoan(HttpServletRequest req,Model model) {
		logger.info("url ==> /personalLoan");
		return "financialProducts/personalLoan";
	}
	
	//대출상품
	@RequestMapping("/LoansProducts.cc")
	public String LoansProducts(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoansProducts");
		return "financialProducts/LoansProducts";
	}
	// 최문수
	//적금상품(Install Savings Product)
	@RequestMapping("/ISP.cc")
	public String ISP(HttpServletRequest req,Model model) {
		logger.info("url ==> /ISP");
		return "financialProducts/ISP";
	}
	// 최문수
	//정기예금(Fixed Deposit Product)
	@RequestMapping("/FDP.cc")
	public String FDP(HttpServletRequest req,Model model) {
		logger.info("url ==> /FDP");
		return "financialProducts/FDP";
	}
	// 최문수
	//자유입출금(Checking Deposit Product)
	@RequestMapping("/CDP.cc")
	public String CDP(HttpServletRequest req,Model model) {
		logger.info("url ==> /CDP");
		return "financialProducts/CDP";
	}
	// 최문수
	// 적금상품 상세페이지
	@RequestMapping("/ISPdetail.cc")
	public String ISPdetail(HttpServletRequest req,Model model) {
		logger.info("url ==> /ISPdetail");
		return "financialProducts/ISPdetail";
	}
	// 최문수
	// 정기예금상품 상세페이지
	@RequestMapping("/FDPdetail.cc")
	public String FDPdetail(HttpServletRequest req,Model model) {
		logger.info("url ==> /FDPdetail");
		return "financialProducts/FDPdetail";
	}
	// 최문수
	// 자유입출금 상세페이지
	@RequestMapping("/CDPdetail.cc")
	public String CDPdetail(HttpServletRequest req,Model model) {
		logger.info("url ==> /CDPdetail");
		return "financialProducts/CDPdetail";
	}
	// 최문수
	// 적금상품 가입페이지(Install Savings Product)
	@RequestMapping("/regISP.cc")
	public String regISP(HttpServletRequest req,Model model) {
		logger.info("url ==> /regISP");
		return "financialProducts/regISP";
	}
	
}
