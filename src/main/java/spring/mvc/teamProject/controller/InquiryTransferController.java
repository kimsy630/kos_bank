package spring.mvc.teamProject.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InquiryTransferController {
	private static final Logger logger = LoggerFactory.getLogger(InquiryTransferController.class);
	
	//계좌조회 AccountCheck.cc
	@RequestMapping("/AccountCheck.cc")
	public String AccountCheck(HttpServletRequest req,Model model) {
		logger.info("url ==> /AccountCheck");
		return "InquiryTransfer/AccountCheck";
	}
	//계좌이체 AccountTransfer.cc
	@RequestMapping("/AccountTransfer.cc")
	public String AccountTransfer(HttpServletRequest req,Model model) {
		logger.info("url ==> /AccountTransfer");
		return "InquiryTransfer/AccountTransfer";
	}
	//다계좌이체 MultiAccountTransfer.cc
	@RequestMapping("/MultiAccountTransfer.cc")
	public String MultiAccountTransfer(HttpServletRequest req,Model model) {
		logger.info("url ==> /MultiAccountTransfer");
		return "InquiryTransfer/MultiAccountTransfer";
	}
}
