package spring.mvc.teamProject.persistence;

import java.util.List;

import spring.mvc.teamProject.vo.AccountVO;
import spring.mvc.teamProject.vo.DepositVO;
import spring.mvc.teamProject.vo.Loans_productVO;
import spring.mvc.teamProject.vo.SavingsVO;

public interface FinancialProductsDAO{
	// ============================================================================
	// 박서하
	public int getLoanCount(); // 대출상품 조회
	public List<Loans_productVO> getLoanList(); // 대출상품 조회
	public Loans_productVO getLoanDetail(String d_name); // 대출상품 상세조회
	// ============================================================================
	
	// 해당 아이디 자유입출금계좌 정보조회
	public List<AccountVO> selectById(String id);
	// 적금 상품 리스트
	public List<SavingsVO> getSavingsList();
	// 정기예금 상품 리스트
	public List<DepositVO> getDepositList();
	// 적금 상품 정보 (신청서용)
	public SavingsVO getSavingsDetail(String j_name);
	// 정기예금 상품 정보 (신청서용)
	public SavingsVO getDepositDetail(String y_name);
	// 적금 상품 신청
	public int insertSavings(SavingsVO vo);
	// 적금 상품 신청
	public int insertDeposit(DepositVO vo);
	
}
