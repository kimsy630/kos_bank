package spring.mvc.teamProject.persistence;

import java.util.List;
<<<<<<< HEAD
import java.util.Map;

import org.springframework.stereotype.Repository;

import spring.mvc.teamProject.vo.AccountVO;

@Repository
public interface InquiryTransferDAO {
	//입출금 계좌조회
	public List<AccountVO> AccountTable(String id);
	//대출조회
	public List<AccountVO> LoansTable(String id);
	//적금조회
	public List<AccountVO> IS_Table(String id);
	//펀드조회
	public List<AccountVO> fund_Table(String id);
	//예금조회
	public List<AccountVO> DepositTable(String id);
	//휴면계좌조회
	public List<AccountVO> StopSleepTable(String id);
	//거래내역조회
	public List<AccountVO> TransactionDetails(String id);
	/*
	//거래내역조회 -ALL
	public List<AccountVO> TransactionDetails_Table_ALL(Map<String,Object> map);
	*/
=======

import org.springframework.stereotype.Repository;

import spring.mvc.teamProject.vo.TransferVO;


@Repository
public interface InquiryTransferDAO {
	
	// 내 계좌 이체내역
	public int addMyLog(TransferVO transferVO);
	
	// 상대 계좌 입금내역
	public int addYourLog(TransferVO transferVO);
	
	// 잔액 감소
	public int withdrawal(TransferVO transferVO);
	
	// 상대 잔액 추가
	public int deposit(TransferVO transferVO);

>>>>>>> dev_ksl
}
