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
import spring.mvc.teamProject.vo.FixedVO;
import spring.mvc.teamProject.vo.MembersVO;
import spring.mvc.teamProject.vo.savings_productVO;



public interface FinancialProductsDAO{
	// 가입을 희망하는 해당 아이디가 보유중인 자유입출금계좌 정보조회
	public List<AccountVO> selectById(String id);
	// 가입폼에 입력한 출금/자동이체용 계좌 비밀번호 일치확인
	public int checkPwd(AccountVO vo);
	// 가입폼에 입력한 출금/자동이체용 계좌에 이체할 금액이 있나확인
	public int checkBalance(AccountVO vo);
	// 새로 개설한 적금/예금 계좌 계좌번호 가져오기
	public String getAccount();
	// 적금 상품 리스트
	public List<savings_productVO> getSavingsList();
	// 정기예금 상품 리스트
	public List<DepositVO> getDepositList();
	// 적금 상품 정보 (신청서용)
	public savings_productVO getSavingsDetail(String j_name);
	// 정기예금 상품 정보 (신청서용)
	public DepositVO getDepositDetail(String y_name);
	// 적금 테이블 삽입
	public int insertSavings(savings_productVO vo);
	// 예금 테이블 삽입
	public int insertDeposit(FixedVO vo);
	// 예금 계좌 만들기
	public int insertDepositAccount(AccountVO vo);
	
}
