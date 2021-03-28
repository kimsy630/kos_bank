package spring.mvc.teamProject.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.teamProject.service.ExchangeService;

@Controller
public class ExchangeController {
	private static final Logger logger = LoggerFactory.getLogger(ExchangeController.class);
	
	@Autowired
	ExchangeService exchaneService;
	
	//환전
	@RequestMapping("/exchange.cc")
	public String exchange(HttpServletRequest req,Model model) {
		logger.info("url ==> /exchange");
		return "exchange/exchange";
	}
	
	//환율정보
	@RequestMapping("/exchangeList.cc")
	public String exchangeList(HttpServletRequest req,Model model) {
		logger.info("url ==> /exchangeList");
		exchaneService.DepositList(req, model);
		return "exchange/exchangeList";
	}
	
	//김세엽
	//환율계산기
	@RequestMapping("/exchangeCalculator.cc")
	public String exchangeCalculator(HttpServletRequest req,Model model) {
		logger.info("url ==> /exchangeCalculator");
		exchaneService.DepositList(req, model);
		return "exchange/exchangeCalculator";
	}
	
	//김세엽
	//ajax계산기 어느나라껀지 확인 
	@RequestMapping("/exchangeCalculatorData.cc")
	public String exchangeCalculatorData(HttpServletRequest req,Model model) {
		logger.info("url ==> /exchangeCalculatorData");
		exchaneService.exchangeCalculatorData(req, model);
		return "exchange/exchangeCalculatorData";
	}
	
	//김세엽
	//ajax계산한값 뿌리기
	@RequestMapping("/exchangeCalculatorResult.cc")
	public String exchangeCalculatorResult(HttpServletRequest req,Model model) {
		logger.info("url ==> /exchangeCalculatorResult");
		exchaneService.exchangeCalculatorResult(req, model);
		return "exchange/exchangeCalculatorResult";
	}
	
}
