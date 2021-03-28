package spring.mvc.teamProject.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import spring.mvc.teamProject.service.NoticeService;

@Controller
public class ServiceCenterController {
	@Autowired
	NoticeService NS;
	
	private static final Logger logger = LoggerFactory.getLogger(ServiceCenterController.class);
	// 챗봇상담 - RPA를 이용한 챗봇
	@RequestMapping("/Chatbot.cc")
	public String Chatbot(HttpServletRequest req,Model model) {
		logger.info("url ==> /Chatbot");
		return "ServiceCenter/Chatbot";
	}
	// 고객상담 - 상담용 게시판
	@RequestMapping("/Counseling.cc")
	public String Counseling(HttpServletRequest req,Model model) {
		logger.info("url ==> /Counseling");
		return "ServiceCenter/Counseling";
	}
	// 공지사항 - 글목록 조회
	@RequestMapping("/Notice.cc")
	public String Notice(HttpServletRequest req,Model model) {
		logger.info("url ==> /Notice");
		
		NS.getNoticeInfo(req, model);
		
		return "ServiceCenter/Notice";
	}
	// 공지사항 - 상세 글 조회
	@RequestMapping("/NoticeDetail.cc")
	public String NoticeDetail(HttpServletRequest req,Model model) {
		logger.info("url ==> /NoticeDetail");
		
		NS.setViews(req, model);
		NS.getContent(req, model);
		
		return "ServiceCenter/NoticeDetail";
	}
	
	// 챗봇 - 항목추가 - 챗봇에 대답할 항목 추가
	@RequestMapping("/AdminChatbot.cc")
	public String AdminChatbot(HttpServletRequest req,Model model) {
		logger.info("url ==> /AdminChatbot");
		return "ServiceCenter/AdminChatbot";
	}
	// 챗봇 - 항목추가 - 챗봇에 대답할 항목 추가
	@RequestMapping("/ChatbotAction.cc")
	public String ChatbotAction(HttpServletRequest req,Model model) {
		logger.info("url ==> /ChatbotAction");
		return "ServiceCenter/ChatbotAction";
	}
	// 대출상품 - 채무 불이행자 독촉메일 발송 - 채무 불이행자 목록 확인 후 , 메일 발송　
	@RequestMapping("/ReminderMail.cc")
	public String ReminderMail(HttpServletRequest req,Model model) {
		logger.info("url ==> /ReminderMail");
		return "ServiceCenter/ReminderMail";
	}
}
