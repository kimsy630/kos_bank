package spring.mvc.teamProject.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public interface InquiryTransferService {
	
	//입출금 계좌조회
	public void AccountTable(HttpServletRequest req, Model model);
	//대출 조회
	public void LoansTable(HttpServletRequest req, Model model);
	//적금 조회
	public void IS_Table(HttpServletRequest req, Model model);
	//펀드 조회
	public void fund_Table(HttpServletRequest req, Model model);
	//예금 조회
	public void DepositTable(HttpServletRequest req, Model model);
	//휴면/정지 조회
	public void StopSleepTable(HttpServletRequest req, Model model);
	//전체조회
	public void AllTable(HttpServletRequest req, Model model);
	//거래내역 조회
	public void TransactionDetails(HttpServletRequest req, Model model);
	//거래내역 테이블
	public void TransactionDetails_Table(HttpServletRequest req, Model model);
	
	
}
