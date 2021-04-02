package spring.mvc.teamProject.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public interface FundingService {
	
	// 펀드 목록 조회
	public void getFundingInfo(HttpServletRequest req, Model model);
	
	// 펀드 상세내용 조회
	public void getFundingContent(HttpServletRequest req, Model model);
		
	// 펀드 댓글 작성
	public void writeComment(HttpServletRequest req, Model model);
	
	// 펀드 구매
	public void buyFund(HttpServletRequest req, Model model);
	
	// 키 가져오기
	public void getKey(HttpServletRequest req, Model model);
	
}
