package spring.mvc.teamProject.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import spring.mvc.teamProject.service.MembersService;

@Controller
public class CommonController extends HttpServlet {
	private static final Logger logger = LoggerFactory.getLogger(CommonController.class);
	
	@Autowired
	MembersService memberService;
	
	@RequestMapping("/main.cc")
	public String index(HttpServletRequest req,Model model) {
		logger.info("url ==> /index");
		return "common/index";
	}
	@RequestMapping("/login.cc")
	public String login(HttpServletRequest req,Model model) {
		logger.info("url ==> /login");
		
		return "common/login";
	}
	@RequestMapping("/signUp.cc")
	public String signUp(HttpServletRequest req,Model model) {
		
		return "common/signUp";
	}
	@RequestMapping("/signUpAction.cc")
	public String signUpAction(HttpServletRequest req,Model model) {
		logger.info("url ==> /signUpAction");
		memberService.signUpAction(req, model);
		return "common/signUpAction";
	}
	@RequestMapping("/idChk.cc")
	public String idChk(HttpServletRequest req,Model model) {
		logger.info("url ==> /idChk");
		memberService.idChk(req, model);
		return "common/idChk";
	}
	
	@RequestMapping("/Adminlogout.cc")
	public String Adminlogout(HttpServletRequest req,HttpServletResponse res) {
		logger.info("url ==> /Adminlogout");
		return "common/logout";
	}
	
	@RequestMapping(value = "androidLogiIn", method = {RequestMethod.GET,RequestMethod.POST})
	public @ResponseBody Map<String, Object> androidSignIn(HttpServletRequest req){
		logger.info("url ==> /androidLogiIn");
		System.out.println("123123213");
		Map<String, Object> map =memberService.androidLogiIn(req);
		return map;
	}
}
