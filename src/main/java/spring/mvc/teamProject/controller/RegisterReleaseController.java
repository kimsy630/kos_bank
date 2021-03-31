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
	//김소림
	//계좌등록 AccountRegistration.do AccountTermination.do
	@RequestMapping("/AccountRegistration.do")
	public String AccountRegistration(HttpServletRequest req,Model model) {
		logger.info("url ==> /AccountRegistration");
		rService.IdNameChk(req, model);
		return "registerRelease/AccountRegistration";
	}
	//김소림
	//계좌등록액션
	@RequestMapping("/AddAccountAction.cc")
	public String AddAccountAction(HttpServletRequest req,Model model) {
		logger.info("url ==> /AddAccountAction");
		rService.AddAccountService(req, model);
		return "registerRelease/AccountRegistrationAction";
	}
	//김소림
	//계좌해지
	@RequestMapping("/AccountTermination.do")
	public String AccountTermination(HttpServletRequest req,Model model) {
		logger.info("url ==> /AccountTermination");
		rService.AccountNomalList(req, model);
		
		return "registerRelease/AccountTermination";
	}
	//김소림
	//계좌해지액션
	@RequestMapping("/AccountTerminationAction.do")
	public String AccountTerminationAction(HttpServletRequest req,Model model) {
		logger.info("url ==> /AccountTerminationAction");
		rService.DeleteAccountService(req, model);
		return "registerRelease/AccountTerminationAction";
	}
	//김소림
	//계좌비밀번호 Chk
	@RequestMapping("/AccountPWChk.cc")
	public String AccountPWChk(HttpServletRequest req,Model model) {
		logger.info("url ==> /AccountPWChk");
		
		return "registerRelease/AccountPWChk";
	}
	
	//김소림
	//예금주 조회
	@RequestMapping("/AccountNameChk.cc")
	public String AccountNameChk(HttpServletRequest req,Model model) {
		logger.info("url ==> /AccountNameChk");
		rService.AccountNameChk(req, model);
		return "registerRelease/AccountNameChk";
	}
	
}
