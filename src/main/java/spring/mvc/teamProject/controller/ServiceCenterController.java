package spring.mvc.teamProject.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ServiceCenterController {
	private static final Logger logger = LoggerFactory.getLogger(ServiceCenterController.class);
	// 챗봇상담 - RPA를 이용한 챗봇
	@RequestMapping("/Chatbot.cc")
	public String Chatbot(HttpServletRequest req,Model model) {
		logger.info("url ==> /Chatbot");
		return "ServiceCenter/Chatbot";
	}
	// 이메일 상담 - 문의내역 이메일 전송하기
	@RequestMapping("/EmailCounseling.cc")
	public String EmailCounseling(HttpServletRequest req,Model model) {
		logger.info("url ==> /EmailCounseling");
		return "ServiceCenter/EmailCounseling";
	}
	// 공지사항 - 등록, 삭제, 조회, 수정 - 공지사항 게시판 기능　
	@RequestMapping("/Notice.cc")
	public String Notice(HttpServletRequest req,Model model) {
		logger.info("url ==> /Notice");
		return "ServiceCenter/Notice";
	}
	
	// 챗봇 - 항목추가 - 챗봇에 대답할 항목 추가
	@RequestMapping("/AdminChatbot.cc")
	public String AdminChatbot(HttpServletRequest req,Model model) {
		logger.info("url ==> /AdminChatbot");
		return "ServiceCenter/AdminChatbot";
	}
	// 이메일 상담 리스트 - 답변으로 연동 - 이메일 상담 답변　
	@RequestMapping("/SendEmailCounseling.cc")
	public String SendEmailCounseling(HttpServletRequest req,Model model) {
		logger.info("url ==> /SendEmailCounseling");
		return "ServiceCenter/SendEmailCounseling";
	}
	// 대출상품 - 채무 불이행자 독촉메일 발송 - 채무 불이행자 목록 확인 후 , 메일 발송　
	@RequestMapping("/ReminderMail.cc")
	public String ReminderMail(HttpServletRequest req,Model model) {
		logger.info("url ==> /ReminderMail");
		return "ServiceCenter/ReminderMail";
	}
}
