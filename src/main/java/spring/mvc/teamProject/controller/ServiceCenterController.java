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
import spring.mvc.teamProject.service.CounselingService;

@Controller
public class ServiceCenterController {
	@Autowired
	NoticeService NS;
	
	@Autowired
	CounselingService CS;
	
	private static final Logger logger = LoggerFactory.getLogger(ServiceCenterController.class);
	// 챗봇상담 - 챗봇 소개 화면(챗봇바로가기버튼)
	@RequestMapping("/Chatbot.cc")
	public String Chatbot(HttpServletRequest req,Model model) {
		logger.info("url ==> /Chatbot");
		return "ServiceCenter/Chatbot";
	}
	// 고객상담 - 글목록 조회
	@RequestMapping("/Counseling.cc")
	public String Counseling(HttpServletRequest req,Model model) {
		logger.info("url ==> /Counseling");
		
		CS.getCounselingInfo(req, model);
		
		return "ServiceCenter/Counseling";
	}
	// 고객상담 - 상세 글 조회
	@RequestMapping("/CounselingDetail.cc")
	public String CounselingDetail(HttpServletRequest req,Model model) {
		logger.info("url ==> /CounselingDetail");
		
		CS.getCounselingContent(req, model);
		
		return "ServiceCenter/CounselingDetail";
	}
	// 고객상담 - 글쓰기 화면
	@RequestMapping("/CounselingWrite.cc")
	public String CounselingWrite(HttpServletRequest req,Model model) {
		logger.info("url ==> /CounselingWrite");
		
		return "ServiceCenter/CounselingWrite";
	}
	// 고객상담 - 글쓰기 처리
	@RequestMapping("/CounselingWriteAction.cc")
	public String CounselingWriteAction(HttpServletRequest req,Model model) {
		logger.info("url ==> /CounselingWriteAction");
		
		CS.writeCounselingPost(req, model);
		
		return "ServiceCenter/CounselingWriteAction";
	}
	// 고객상담 - 글수정 화면
	@RequestMapping("/CounselingModify.cc")
	public String CounselingModify(HttpServletRequest req,Model model) {
		logger.info("url ==> /CounselingModify");
		
		CS.getCounselingModify(req, model);
		
		return "ServiceCenter/CounselingModify";
	}
	// 고객상담 - 글수정 처리
	@RequestMapping("/CounselingModifyAction.cc")
	public String CounselingModifyAction(HttpServletRequest req,Model model) {
		logger.info("url ==> /CounselingModify");
		
		CS.setCounselingModify(req, model);
		
		return "ServiceCenter/CounselingModifyAction";
	}
	// 고객상담 - 글삭제 처리
	@RequestMapping("/CounselingDeleteAction.cc")
	public String CounselingDeleteAction(HttpServletRequest req,Model model) {
		logger.info("url ==> /CounselingDeleteAction");
		
		CS.setCounselingDelete(req, model);
		
		return "ServiceCenter/CounselingDeleteAction";
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
		
		NS.setNoticeViews(req, model);
		NS.getNoticeContent(req, model);
		
		return "ServiceCenter/NoticeDetail";
	}
}
