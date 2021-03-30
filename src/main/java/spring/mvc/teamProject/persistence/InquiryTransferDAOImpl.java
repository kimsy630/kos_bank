package spring.mvc.teamProject.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.teamProject.vo.AccountTransferVO;
import spring.mvc.teamProject.vo.AccountVO;
import spring.mvc.teamProject.vo.LoansVO;
import spring.mvc.teamProject.vo.TransferVO;
import spring.mvc.teamProject.vo.fundVO;
import spring.mvc.teamProject.vo.installment_savingsVO;

@Repository
public class InquiryTransferDAOImpl implements InquiryTransferDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	// 입출금 계좌 조회
	@Override
	public List<AccountTransferVO> AccountTable(String id) {
		InquiryTransferDAO dao = sqlSession.getMapper(InquiryTransferDAO.class);
		
		return dao.AccountTable(id);
	}
	//대출
	@Override
	public List<LoansVO> LoansTable(String id) {
		InquiryTransferDAO dao = sqlSession.getMapper(InquiryTransferDAO.class);
		
		return dao.LoansTable(id);
	}
	//적금
	@Override
	public List<installment_savingsVO> IS_Table(String id) {
		InquiryTransferDAO dao = sqlSession.getMapper(InquiryTransferDAO.class);
		return dao.IS_Table(id);
	}
	//펀드
	@Override
	public List<fundVO> fund_Table(String id) {
		InquiryTransferDAO dao = sqlSession.getMapper(InquiryTransferDAO.class);
		return dao.fund_Table(id);
	}
	//예금
	@Override
	public List<AccountVO> DepositTable(String id) {
		InquiryTransferDAO dao = sqlSession.getMapper(InquiryTransferDAO.class);
		return dao.DepositTable(id);
	}
	//정지휴면
	@Override
	public List<AccountVO> StopSleepTable(String id) {
		InquiryTransferDAO dao = sqlSession.getMapper(InquiryTransferDAO.class);
		return dao.StopSleepTable(id);
	}
	@Override
	public List<AccountVO> TransactionDetails(String id) {
		InquiryTransferDAO dao = sqlSession.getMapper(InquiryTransferDAO.class);
		return dao.TransactionDetails(id);
	}
	/*
	@Override
	public List<AccountVO> TransactionDetails_Table_ALL(Map<String, Object> map) {
		InquiryTransferDAO dao = sqlSession.getMapper(InquiryTransferDAO.class);
		return dao.TransactionDetails_Table_ALL(map);
	}
*/
	@Override
	public int addMyLog(TransferVO transferVO) {
		return sqlSession.insert("spring.mvc.teamProject.persistence.InquiryTransferDAO.addMyLog", transferVO);
	}

	@Override
	public int addYourLog(TransferVO transferVO) {
		return sqlSession.insert("spring.mvc.teamProject.persistence.InquiryTransferDAO.addYourLog", transferVO);
	}

	@Override
	public int withdrawal(TransferVO transferVO) {
		return sqlSession.update("spring.mvc.teamProject.persistence.InquiryTransferDAO.withdrawal", transferVO);
	}

	@Override
	public int deposit(TransferVO transferVO) {
		return sqlSession.update("spring.mvc.teamProject.persistence.InquiryTransferDAO.deposit", transferVO);
	}

}
