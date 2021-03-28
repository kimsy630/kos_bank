package spring.mvc.teamProject.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.teamProject.service.FinancialProductsService;
@Controller
public class FinancialProductsController {
	private static final Logger logger = LoggerFactory.getLogger(FinancialProductsController.class);
	
	@Autowired
	FinancialProductsService service;
	
	// 박서하
	//대출상품
	@RequestMapping("/LoansProducts.cc")
	public String LoansProducts(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoansProducts");
		
		service.loanProductsList(req, model);
		
		return "financialProducts/LoansProducts";
	}
	
	// 박서하
	//대출상품 상세
	@RequestMapping("/LoansDetail.cc")
	public String LoansDetail(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoansDetail");
		
		service.loanProductDetail(req, model);
		
		return "financialProducts/LoansDetail";
	}
	
	// 최문수
	//적금상품(Savings)
	@RequestMapping("/SavingsList.cc")
	public String SavingsList(HttpServletRequest req,Model model) {
		logger.info("url ==> /SavingsList");
		
		service.SavingsList(req, model);
		
		return "financialProducts/SavingsList";
	}
	
	// 최문수
	//정기예금(Deposit)
	@RequestMapping("/DepositList.cc")
	public String DepositList(HttpServletRequest req,Model model) {
		logger.info("url ==> /DepositList");
		
		service.DepositList(req, model);
		
		return "financialProducts/DepositList";
	}
	
	// 최문수
	// 적금상품 상세페이지
	@RequestMapping("/SavingsDetail.cc")
	public String SavingsDetail(HttpServletRequest req,Model model) {
		logger.info("url ==> /SavingsDetail");
		return "financialProducts/SavingsDetail";
	}
	
	// 최문수
	// 정기예금상품 상세페이지
	@RequestMapping("/DepositDetail.cc")
	public String Depositdetail(HttpServletRequest req,Model model) {
		logger.info("url ==> /DepositDetail");
				
		return "financialProducts/DepositDetail";
	}
<<<<<<< HEAD
	
	// 박서하
	//대출상품 상세
	@RequestMapping("/LoansDetail.cc")
	public String LoansDetail(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoansDetail");
		
		loanservice.loanProductDetail(req, model);
		
		return "financialProducts/LoansDetail";
	}
	
=======
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
	}	
>>>>>>> dev_psh2
	// 최문수
	// 적금상품 가입페이지
	@RequestMapping("/SavingsRegistration.cc")
	public String regISP(HttpServletRequest req,Model model) {
		logger.info("url ==> /SavingsRegistration");
		
		String j_name = req.getParameter("j_name");
		req.setAttribute("j_name", j_name);
		service.AccountList(req, model);
		service.SavingsDetail(req, model);
		
		return "financialProducts/SavingsRegistration";
	}
	
	// 최문수
	// 정기예금상품 가입페이지
	@RequestMapping("/DepositRegistration.cc")
	public String DepositRegistration(HttpServletRequest req,Model model) {
		logger.info("url ==> /DepositRegistration");
		
		String y_name = req.getParameter("y_name");
		req.setAttribute("y_name", y_name);
		service.AccountList(req, model);
		service.DepositDetail(req, model);
		
		return "financialProducts/DepositRegistration";
	}
	// 최문수
	// 적금상품 가입처리
	@RequestMapping("/SavingsAction.cc")
	public String SavingsAction(HttpServletRequest req,Model model) {
		logger.info("url ==> /SavingsAction");
		
		service.SavingsAction(req, model);
		
		return "financialProducts/SavingsAction";
	}
	// 최문수
	// 정기예금상품 가입처리
	@RequestMapping("/DepositAction.cc")
	public String DepositAction(HttpServletRequest req,Model model) {
		logger.info("url ==> /DepositAction");
		
		service.DepositAction(req, model);
		
		return "financialProducts/DepositAction";
	}
	
	
	
	
}
