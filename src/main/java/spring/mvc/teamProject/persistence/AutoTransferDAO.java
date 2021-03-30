package spring.mvc.teamProject.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import spring.mvc.teamProject.vo.AutoTransferVO;

@Repository
public interface AutoTransferDAO{

	// 자동이체 신청
	public int AutoTransferAdd(AutoTransferVO vo);
	
	// 자동이체 정보 조회
	public List<AutoTransferVO> selectByDate(String day);
	
	// 자동이체 계좌 출금
	public int AutoWithdrawal(AutoTransferVO vo);
	
	// 자동이체 상대계좌 입금
	public int AutoDeposit(AutoTransferVO vo);
	
	// 자동이체 최근거래일자
	public int lastRunDate(AutoTransferVO vo);
	
	// 자동이체 출금 거래내역
	public int sendAutoTrans(AutoTransferVO vo);
	
	// 자동이체 입금 거래내역
	public int receiveAutoTrans(AutoTransferVO vo);
	
}
