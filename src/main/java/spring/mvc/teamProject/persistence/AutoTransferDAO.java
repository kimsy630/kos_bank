package spring.mvc.teamProject.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import spring.mvc.teamProject.vo.AutoTransferVO;

@Repository
public interface AutoTransferDAO{
	
	// 자동이체 조회
	public List<AutoTransferVO> AutoTransferList(String account);
	
	// 자동이체 신청
	public int AutoTransferAdd(AutoTransferVO vo);
	
	// 박서하
	// 자동이체 신청(대출용)
	public int AutoTransferAdd2(AutoTransferVO vo);
	
	// 자동이체 정보 조회(자동이체실행용)
	public List<AutoTransferVO> selectByDate(String day);
	
	@Select("SELECT COUNT(*) FROM account_info WHERE account = #{account} AND accountPW=#{accountPW}")
	// 자동이체 계좌비밀번호 Chk
	public int AutoTransferDeleteChk(Map<String,Object> map);
	
	// 자동이체 해지
	public int AutoTransferDelete(String account);
	
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
	
	// 자동이체 해지정보
	public List<AutoTransferVO> AutoTransferDeleteList(int jd_key);
	
	// 계좌이체 내역 log(출금)
	public int TransferMyLog(AutoTransferVO vo);
	
	 // 계좌이체 내역 log(입금)
    public int TransferYourLog(AutoTransferVO vo);
}
