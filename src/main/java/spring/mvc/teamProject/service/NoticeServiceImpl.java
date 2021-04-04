package spring.mvc.teamProject.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.teamProject.persistence.NoticeDAOImpl;
import spring.mvc.teamProject.vo.NoticeVO;

@Service
public class NoticeServiceImpl implements NoticeService{

	@Autowired
	NoticeDAOImpl NoticeDAO;
	
	// 공지사항 글목록 조회
	@Override  
	public void getNoticeInfo(HttpServletRequest req, Model model) {
		List<NoticeVO> list = NoticeDAO.getNoticeInfo();
		
		model.addAttribute("list", list);
	}
	
	// 공지사항 글상세내용 조회
	@Override  
	public void getNoticeContent(HttpServletRequest req, Model model) {
		int n_num = Integer.parseInt(req.getParameter("n_num"));
		List<NoticeVO> list = NoticeDAO.getNoticeContent(n_num);
		
		model.addAttribute("list", list);
	}
	
	// 공지사항 글확인시 조회수 증가
	@Override  
	public void setNoticeViews(HttpServletRequest req, Model model) {
		int n_num = Integer.parseInt(req.getParameter("n_num"));
		NoticeDAO.setNoticeViews(n_num);
	}
}
