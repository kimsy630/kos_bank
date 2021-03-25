package spring.mvc.teamProject.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public interface LoanCenterService {
	// ============================================================================
	// 박서하
	public void LoanAccountCheck(HttpServletRequest req,Model model); // 대출계좌 조회
	public void LoanAccountDetail(HttpServletRequest req,Model model); // 대출계좌 상세조회
	public void LoanCloseCheck(HttpServletRequest req,Model model); // 대출해지현황 조회
	public void LoanCloseDetail(HttpServletRequest req,Model model); // 대출해지현황 상세조회
	public void LoanRateCheck(HttpServletRequest req,Model model); // 대출이자 조회
	public void LoanPrincipalCheck(HttpServletRequest req,Model model); // 대출원금 조회
	// ============================================================================
}
