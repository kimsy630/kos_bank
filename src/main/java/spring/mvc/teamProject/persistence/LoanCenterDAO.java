package spring.mvc.teamProject.persistence;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import spring.mvc.teamProject.vo.AccountVO;
import spring.mvc.teamProject.vo.LoansVO;
import spring.mvc.teamProject.vo.Loans_productVO;

@Repository
public interface LoanCenterDAO {	
	// ============================================================================
	// 박서하
	public List<LoansVO> getLoanAccountList(String id); // 대출계좌 조회
	public LoansVO getLoanAccountDetail(Map<String, Object> map); // 대출계좌 상세조회
	public List<LoansVO> getLoanCloseList(String id); // 대출해지현황 조회
	public LoansVO getLoanCloseDetail(Map<String, Object> map); // 대출해지현황 상세조회
	public LoansVO getLoanPrincipal(String account); // 대출원금 예상
	public LoansVO getLoanRateCheckIn(String account); // 대출이자 예상(내부정보)
	public Loans_productVO getLoanApplication(String d_name); // 신규대출 신청
	public String getName(String id); // 신규대출 신청(이름)
	public List<AccountVO> getCheckingaccount(String id); // 신규대출 신청(입출금 계좌)
	public int insertAccount(AccountVO vo); // 신규대출 신청 실행(계좌 생성)
	public int insertLoan(LoansVO vo); // 신규대출 신청 실행(대출 생성)
	// ============================================================================
}
