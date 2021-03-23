package spring.mvc.teamProject.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public interface RegisterReleaseService {

	// 계좌등록
	public void AddAccountService(HttpServletRequest req, Model model);
	
	// 계좌해지
	public void DeleteAccountService(HttpServletRequest req, Model model);
	
	
}
