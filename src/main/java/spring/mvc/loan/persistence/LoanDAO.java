package spring.mvc.loan.persistence;

import java.util.List;

import org.springframework.stereotype.Repository;

import spring.mvc.loan.vo.LoanVO;

@Repository
public interface LoanDAO {
	// FinancialProductsController
	public int getLoanCount();
	public List<LoanVO> getLoanList();
	public LoanVO getLoanDetail(String d_name);
	
	// ============================================================================
	// LoanCenterController
	public int getLoanAccountCount(String id);
	public List<LoanVO> getLoanAccountList(String id);
	public LoanVO getLoanAccountDetail(LoanVO vo);
	public int getLoanCloseCount(String id);
	public List<LoanVO> getLoanCloseList(String id);
	public LoanVO getLoanCloseDetail(LoanVO vo);
}
