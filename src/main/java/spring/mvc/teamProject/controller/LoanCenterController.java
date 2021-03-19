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
	//대출신청
	@RequestMapping("/LoanApplication.cc")
	public String LoanApplication(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoanApplication");
		return "LoanCenter/LoanApplication";
	}
	
	// 박서하
	//대출계좌조회 (대출 테이블 Loanstable.do)
	@RequestMapping("/LoanAccountCheck.cc")
	public String LoanAccountCheck(HttpServletRequest req,Model model) {
		logger.info("url ==> /LoanAccountCheck");
		return "LoanCenter/LoanAccountCheck";
	}
}
