package spring.mvc.teamProject.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ExchangeController {
	private static final Logger logger = LoggerFactory.getLogger(ExchangeController.class);
	
	
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
		return "exchange/exchangeList";
	}
}
