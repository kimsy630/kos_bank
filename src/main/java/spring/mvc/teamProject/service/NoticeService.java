package spring.mvc.teamProject.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public interface NoticeService {
	
	// 공지사항 글목록 조회
	public void getNoticeInfo(HttpServletRequest req, Model model);
	
	// 공지사항 글상세내용 조회
	public void getContent(HttpServletRequest req, Model model);
	
	// 공지사항 글확인시 조회수 증가
	public void setViews(HttpServletRequest req, Model model);
	
}
