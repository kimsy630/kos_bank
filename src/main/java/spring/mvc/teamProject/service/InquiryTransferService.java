package spring.mvc.teamProject.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public interface InquiryTransferService {
	
	//계좌이체 입력정보
	public void transferTable(HttpServletRequest req, Model model);
	
	//계좌이체 실행
	public void transferAction(HttpServletRequest req, Model model);

}
