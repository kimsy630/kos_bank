package spring.mvc.teamProject.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegisterReleaseController {

	private static final Logger logger = LoggerFactory.getLogger(RegisterReleaseController.class);

	//계좌등록
	@RequestMapping("/AccountRegistration.cc")
	public String AccountRegistration(HttpServletRequest req,Model model) {
		logger.info("url ==> /AccountRegistration");
		return "registerRelease/AccountRegistration";
	}
	
	//계좌해지
	@RequestMapping("/AccountTermination.cc")
	public String AccountTermination(HttpServletRequest req,Model model) {
		logger.info("url ==> /AccountTermination");
		return "registerRelease/AccountTermination";
	}
}
