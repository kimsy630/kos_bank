package spring.mvc.teamProject.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

<<<<<<< HEAD
import spring.mvc.teamProject.service.FinancialProductsService;
import spring.mvc.teamProject.service.FinancialProductsServiceImpl;
=======
import spring.mvc.loan.service.LoanService;
>>>>>>> dev_psh

@Controller
public class FinancialProductsController {
	private static final Logger logger = LoggerFactory.getLogger(FinancialProductsController.class);
	
	@Autowired
<<<<<<< HEAD
	FinancialProductsService service;
	
	
	//개인대출
	@RequestMapping("/personalLoan.cc")
	public String personalLoan(HttpServletRequest req,Model model) {
		logger.info("url ==> /personalLoan");
		return "financialProducts/personalLoan";
	}
=======
	LoanService loanservice;
	
	// 박서하
>>>>>>> dev_psh
	//대출상품
	@RequestMapping("/LoansProducts.cc")
	public String LoansProducts(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoansProducts");
		
		loanservice.loanProductsList(req, model);
		
		return "financialProducts/LoansProducts";
	}
<<<<<<< HEAD
	// 최문수
	//적금상품(Savings)
	@RequestMapping("/SavingsList.cc")
	public String ISP(HttpServletRequest req,Model model) {
		logger.info("url ==> /SavingsList");
		return "financialProducts/SavingsList";
	}
	// 최문수
	//정기예금(Deposit)
	@RequestMapping("/DepositList.cc")
	public String FDP(HttpServletRequest req,Model model) {
		logger.info("url ==> /DepositList");
		return "financialProducts/DepositList";
	}
	// 최문수
	// 적금상품 상세페이지
	@RequestMapping("/SavingsDetail.cc")
	public String ISPdetail(HttpServletRequest req,Model model) {
		logger.info("url ==> /SavingsDetail");
		return "financialProducts/SavingsDetail";
	}
	// 최문수
	// 정기예금상품 상세페이지
	@RequestMapping("/DepositDetail.cc")
	public String FDPdetail(HttpServletRequest req,Model model) {
		logger.info("url ==> /DepositDetail");
		return "financialProducts/DepositDetail";
	}
	// 최문수
	// 적금상품 가입페이지
	@RequestMapping("/SavingsRegistration.cc")
	public String regISP(HttpServletRequest req,Model model) {
		logger.info("url ==> /SavingsRegistration");
		
		//String j_name = req.getParameter("j_name");
		//req.setAttribute("j_name", j_name);
		//service.AccountList(req, model);
		//service.SavingsDetail(req, model);
		
		return "financialProducts/SavingsRegistration";
=======
	
	// 박서하
	//대출상품 상세
	@RequestMapping("/LoansDetail.cc")
	public String LoansDetail(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoansDetail");
		
		loanservice.loanProductDetail(req, model);
		
		return "financialProducts/LoansDetail";
	}
	
	//적금상품
	@RequestMapping("/ISP.cc")
	public String ISP(HttpServletRequest req,Model model) {
		logger.info("url ==> /ISP");
		return "financialProducts/ISP";
>>>>>>> dev_psh
	}
	// 최문수
	// 정기예금상품 가입페이지
	@RequestMapping("/DepositRegistration.cc")
	public String regFDP(HttpServletRequest req,Model model) {
		logger.info("url ==> /DepositRegistration");
		
		//String y_name = req.getParameter("y_name");
		//req.setAttribute("y_name", y_name);
		//service.AccountList(req, model);
		//service.DepositDetail(req, model);
		
		return "financialProducts/DepositRegistration";
	}
	// 최문수
	// 적금상품 가입처리
	@RequestMapping("/SavingsAction.cc")
	public String SavingsAction(HttpServletRequest req,Model model) {
		logger.info("url ==> /SavingsAction");
		
		// service.SavingsAction(req, model);
		
		return "financialProducts/SavingsAction";
	}
	// 최문수
	// 정기예금상품 가입처리
	@RequestMapping("/DepositAction.cc")
	public String DepositAction(HttpServletRequest req,Model model) {
		logger.info("url ==> /DepositAction");
		
		// service.DepositAction(req, model);
		
		return "financialProducts/DepositAction";
	}
	
	
	
}
