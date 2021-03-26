package spring.mvc.teamProject.persistence;

import java.util.List;
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
}
