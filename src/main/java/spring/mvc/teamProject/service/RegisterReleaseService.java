package spring.mvc.teamProject.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.teamProject.vo.AccountVO;

@Service
public interface RegisterReleaseService {

	// 계좌등록
	public void AddAccountService(HttpServletRequest req, Model model);
	
	// 계좌조회
	public void AccountList(HttpServletRequest req, Model model);
	
	// 계좌해지
	public void DeleteAccountService(HttpServletRequest req, Model model);
	
	
	
}
