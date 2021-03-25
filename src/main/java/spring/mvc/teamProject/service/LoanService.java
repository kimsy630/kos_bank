package spring.mvc.teamProject.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public interface LoanService {
	// FinancialProductsController
	public void loanProductsList(HttpServletRequest req,Model model);
	public void loanProductDetail(HttpServletRequest req,Model model);
	
	// ============================================================================
	// LoanCenterController
	public void LoanAccountCheck(HttpServletRequest req,Model model);
	public void LoanAccountDetail(HttpServletRequest req,Model model);
	public void LoanCloseCheck(HttpServletRequest req,Model model);
	public void LoanCloseDetail(HttpServletRequest req,Model model);
	public void LoanRateCheck(HttpServletRequest req,Model model);
	public void LoanPrincipalCheck(HttpServletRequest req,Model model);
}
