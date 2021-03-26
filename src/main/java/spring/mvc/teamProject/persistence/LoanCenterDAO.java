package spring.mvc.teamProject.persistence;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import spring.mvc.teamProject.vo.LoansVO;

@Repository
public interface LoanCenterDAO {	
	// ============================================================================
	// 박서하
	public List<LoansVO> getLoanAccountList(String id); // 대출계좌 조회
	public LoansVO getLoanAccountDetail(Map<String, Object> map); // 대출계좌 상세조회
	public List<LoansVO> getLoanCloseList(String id); // 대출해지현황 조회
	public LoansVO getLoanCloseDetail(Map<String, Object> map); // 대출해지현황 상세조회
	public LoansVO getLoanPrincipal(String account); // 대출원금 예상(내부정보)
	// ============================================================================
}
