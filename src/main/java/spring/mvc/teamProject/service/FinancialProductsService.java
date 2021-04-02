package spring.mvc.teamProject.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public interface FinancialProductsService {
	// ============================================================================
	// 박서하
	// 대출상품 조회
	public void loanProductsList(HttpServletRequest req,Model model); 
	
	// 박서하
	// 대출상품 상세조회
	public void loanProductDetail(HttpServletRequest req,Model model);
	// ============================================================================
	
	// 해당 아이디 출금/자동이체용 자유입출금계좌 정보조회
	public void AccountList(HttpServletRequest req, Model model);
	// 적금 상품 리스트
	public void SavingsList(HttpServletRequest req, Model model);
	// 정기예금 상품 리스트
	public void DepositList(HttpServletRequest req, Model model);
	// 적금 상품 정보 (신청서용) 
	public void SavingsDetail(HttpServletRequest req, Model model);
	// 정기예금 상품 정보 (신청서용)
	public void DepositDetail(HttpServletRequest req, Model model);
	// 적금상품 가입처리
	public void SavingsAction(HttpServletRequest req, Model model);
	// 정기예금상품 가입처리
	public void DepositAction(HttpServletRequest req, Model model);
}
