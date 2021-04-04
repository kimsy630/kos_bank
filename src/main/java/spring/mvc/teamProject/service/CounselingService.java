package spring.mvc.teamProject.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public interface CounselingService {
	
	// 고객상담 글목록 조회
	public void getCounselingInfo(HttpServletRequest req, Model model);
	
	// 고객상담 글상세내용 조회 
	public void getCounselingContent(HttpServletRequest req, Model model);
	
	// 고객상담 글작성
	public void writeCounselingPost(HttpServletRequest req, Model model);
	
	// 고객상담 수정 조회
	public void getCounselingModify(HttpServletRequest req, Model model);
	
	// 고객상담 글수정
	public void setCounselingModify(HttpServletRequest req, Model model);
	
	// 고객상담 글삭제
	public void setCounselingDelete(HttpServletRequest req, Model model);
	
}
