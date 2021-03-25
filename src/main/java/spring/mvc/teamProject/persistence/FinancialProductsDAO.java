package spring.mvc.teamProject.persistence;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.ui.Model;

import spring.mvc.teamProject.vo.AccountVO;
import spring.mvc.teamProject.vo.DepositVO;
import spring.mvc.teamProject.vo.MembersVO;
import spring.mvc.teamProject.vo.SavingsVO;



public interface FinancialProductsDAO{
	// 해당 아이디 자유입출금계좌 정보조회
	public List<AccountVO> selectById(String id);
	// 적금 상품 리스트
	public List<SavingsVO> getSavingsList();
	// 정기예금 상품 리스트
	public List<DepositVO> getDepositList();
	// 적금 상품 정보 (신청서용)
	public SavingsVO getSavingsDetail(String j_name);
	// 정기예금 상품 정보 (신청서용)
	public DepositVO getDepositDetail(String y_name);
	// 적금 테이블 삽입
	public int insertSavings(SavingsVO vo);
	// 예금 테이블 삽입
	public int insertDeposit(DepositVO vo);
	// 예금 계좌 만들기
	public int insertDepositAccount(AccountVO vo);
	
}
