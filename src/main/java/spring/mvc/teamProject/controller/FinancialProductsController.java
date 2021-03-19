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
	
	//적금상품
	@RequestMapping("/ISP.cc")
	public String ISP(HttpServletRequest req,Model model) {
		logger.info("url ==> /ISP");
		return "financialProducts/ISP";
	}
	
	//정기예금
	@RequestMapping("/FixedDeposit.cc")
	public String FixedDeposit(HttpServletRequest req,Model model) {
		logger.info("url ==> /FixedDeposit");
		return "financialProducts/FixedDeposit";
	}
	
	//예금상품
	@RequestMapping("/DepositProduct.cc")
	public String DepositProduct(HttpServletRequest req,Model model) {
		logger.info("url ==> /DepositProduct");
		return "financialProducts/DepositProduct";
	}
	
	//예금상품 신청페이지
	@RequestMapping("/DepositApplication.cc")
	public String DepositApplication(HttpServletRequest req,Model model) {
		logger.info("url ==> /DepositApplication");
		return "financialProducts/DepositApplication";
	}
}
