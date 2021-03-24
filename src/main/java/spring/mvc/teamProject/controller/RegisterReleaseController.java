package spring.mvc.teamProject.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import spring.mvc.teamProject.service.RegisterReleaseService;
import spring.mvc.teamProject.vo.AccountVO;
import spring.mvc.teamProject.vo.MembersVO;

@Controller
public class RegisterReleaseController {

	@Autowired
	RegisterReleaseService rService;
	
	private static final Logger logger = LoggerFactory.getLogger(RegisterReleaseController.class);

	//계좌등록
	@RequestMapping("/AccountRegistration.cc")
	public String AccountRegistration(HttpServletRequest req,Model model) {
		logger.info("url ==> /AccountRegistration");
		return "registerRelease/AccountRegistration";
	}
	
	//계좌등록액션
	@RequestMapping("/AddAccountAction.cc")
	public String AddAccountAction(HttpServletRequest req,Model model) {
		logger.info("url ==> /AddAccountAction");
		rService.AddAccountService(req, model);
		return "registerRelease/AccountRegistrationAction";
	}
	
	//계좌해지
	@RequestMapping("/AccountTermination.cc")
	public String AccountTermination(HttpServletRequest req,Model model) {
		logger.info("url ==> /AccountTermination");
		rService.AccountList(req, model);
		
		return "registerRelease/AccountTermination";
	}
	
	//계좌해지액션
	@RequestMapping("/AccountTerminationAction.cc")
	public String AccountTerminationAction(HttpServletRequest req,Model model) {
		logger.info("url ==> /AccountTerminationAction");
		rService.DeleteAccountService(req, model);
		return "registerRelease/AccountTerminationAction";
	}
	
	//계좌비밀번호 Chk
	@RequestMapping("/AccountPWChk.cc")
	public String AccountPWChk(HttpServletRequest req,Model model) {
		logger.info("url ==> /AccountPWChk");
		
		return "registerRelease/AccountPWChk";
	}
	
}
