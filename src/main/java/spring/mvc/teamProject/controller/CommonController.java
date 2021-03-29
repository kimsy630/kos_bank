package spring.mvc.teamProject.controller;

import java.io.IOException;

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
<<<<<<< HEAD
	@RequestMapping("/Adminlogout.cc")
	public String Adminlogout(HttpServletRequest req,HttpServletResponse res) {
		logger.info("url ==> /Adminlogout");
		return "common/logout";
	}
=======
	
	
	//@Scheduled(cron="*/10 * * * * *")
   // public void scheduleTest() {
   //     logger.info("스케쥴러 테스트중");
   // }
	
	
>>>>>>> dev_ksl
	//idChk.cc
	/*
	@RequestMapping("/corfirmId.cc")
	public String corfirmId(HttpServletRequest req,Model model) {
		logger.info("url ==> /corfirmId");
		categoryService.mainMenu(req, model);
		memberService.confirmId(req, model);
		return "common/corfirmId";
	}
	
	@RequestMapping("/joinAction.cc")
	public String joinAction(HttpServletRequest req,Model model) {
		logger.info("url ==> /joinAction");
		categoryService.mainMenu(req, model);
		memberService.signInAction(req, model);
		return "common/joinAction";
	}
	
	@RequestMapping("/emailChk.cc")
	public String emailChk(HttpServletRequest req,Model model) {
		logger.info("url ==> /emailChk");
		categoryService.mainMenu(req, model);
		memberService.emailChk(req, model);
		return "common/login";
	}
	@RequestMapping("/category.cc")
	public String category(HttpServletRequest req,Model model) {
		logger.info("url ==> /category");
		categoryService.mainMenu(req, model);
		productService.productCategoryList(req, model);
		return "common/category";
	}
	
	@RequestMapping("/products.cc")
	public String products(HttpServletRequest req,Model model) {
		logger.info("url ==> /category");
		categoryService.mainMenu(req, model);
		productService.productInfo(req, model);
		return "common/products";
	}
	*/
}
