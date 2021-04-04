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
	
	// 계좌전체조회
	public void AccountList(HttpServletRequest req, Model model);
	
	// 계좌(정상)조회
	public void AccountNomalList(HttpServletRequest req, Model model);
	
	// 입출금 계좌 조회
	public void AccountInoutType(HttpServletRequest req, Model model);
	
	// 계좌(정상+입출금+대출)리스트
	public void AccountInoutLoansType(HttpServletRequest req, Model model);
	
	// 회원 이름 조회
	public void IdNameChk(HttpServletRequest req, Model model);
	
	// 예금주 조회
	public void AccountNameChk(HttpServletRequest req, Model model);
	
	// 계좌해지
	public void DeleteAccountService(HttpServletRequest req, Model model);
	
	
	
}
