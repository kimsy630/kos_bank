package spring.mvc.teamProject.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public interface LimitService {
	//한도변경페이지
	public void AccountLimitInfo(HttpServletRequest req, Model model);
	
	//한도조회
	public void AccountLimitSearch(HttpServletRequest req, Model model);

	//한도신청
	public void AccountLimitAction(HttpServletRequest req, Model model);
	
	//한도 스캐줄러
	public void limitSchedule();
}
