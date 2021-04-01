package spring.mvc.teamProject.persistence;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import spring.mvc.teamProject.vo.AccountTransferVO;
import spring.mvc.teamProject.vo.AccountVO;
import spring.mvc.teamProject.vo.Fixed_depositVO;
import spring.mvc.teamProject.vo.LoansVO;
import spring.mvc.teamProject.vo.TransferVO;
import spring.mvc.teamProject.vo.fundVO;
import spring.mvc.teamProject.vo.installment_savingsVO;

import org.springframework.stereotype.Repository;

@Repository
public interface InquiryTransferDAO {
	//입출금 계좌조회
	public List<AccountTransferVO> AccountTable(String id);
	//대출조회
	public List<LoansVO> LoansTable(String id);
	//적금조회
	public List<installment_savingsVO> IS_Table(String id);
	//펀드조회
	public List<fundVO> fund_Table(String id);
	//예금조회
	public List<Fixed_depositVO> DepositTable(String id);
	//휴면계좌조회
	public List<AccountTransferVO> StopSleepTable(String id);
	//거래내역조회
	public List<AccountVO> TransactionDetails(String id);
	//거래내역 cnt
	public int get_transferCnt(Map<String,Object> map2);
	//거래내역조회 
	public List<AccountTransferVO> TransactionDetails_Table_ALL(Map<String,Object> map);
	//거래내역(출금합계)
	public Map<String,Object> outTran(Map<String,Object> map);
	//거래내역(입금합계)
	public Map<String,Object> inTran(Map<String,Object> map);
	
	
		
	// 내 계좌 이체내역
	public int addMyLog(TransferVO transferVO);
	
	// 상대 계좌 입금내역
	public int addYourLog(TransferVO transferVO);
	
	// 잔액 감소
	public int withdrawal(TransferVO transferVO);
	
	// 상대 잔액 추가
	public int deposit(TransferVO transferVO);
	
	
}
