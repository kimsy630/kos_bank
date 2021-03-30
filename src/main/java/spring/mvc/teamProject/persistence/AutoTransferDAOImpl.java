package spring.mvc.teamProject.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.teamProject.vo.AutoTransferVO;

@Repository
public class AutoTransferDAOImpl implements AutoTransferDAO{
	
	@Autowired
	SqlSession sqlSession;
	
	// 자동이체 신청
	@Override
	public int AutoTransferAdd(AutoTransferVO vo) {
		return sqlSession.insert("spring.mvc.teamProject.persistence.AutoTransferDAO.AutoTransferAdd", vo);
	}
	
	// 자동이체 정보 조회
	@Override
	public List<AutoTransferVO> selectByDate(String day) {
		List<AutoTransferVO> selectByDate = null;
		// 자동이체 조건 검색 쿼리
		selectByDate = sqlSession.selectList("spring.mvc.teamProject.persistence.AutoTransferDAO.selectByDate",day);
		return selectByDate;
	}
	
	// 자동이체 계좌 출금
	@Override
	public int AutoWithdrawal(AutoTransferVO vo) {
		return sqlSession.update("spring.mvc.teamProject.persistence.AutoTransferDAO.AutoWithdrawal", vo);
	}
	
	// 자동이체 상대계좌 입금
	@Override
	public int AutoDeposit(AutoTransferVO vo) {
		return sqlSession.update("spring.mvc.teamProject.persistence.AutoTransferDAO.AutoDeposit", vo);
	}
	
	// 자동이체 최근거래일자
	@Override
	public int lastRunDate(AutoTransferVO vo) {
		return sqlSession.update("spring.mvc.teamProject.persistence.AutoTransferDAO.lastRunDate", vo);
	}
	
	// 거래내역 로그(출금 거래내역)
	@Override
	public int sendAutoTrans(AutoTransferVO vo) {
		return sqlSession.insert("spring.mvc.teamProject.persistence.AutoTransferDAO.sendAutoTrans", vo);
	}
	
	// 거래내역 로그(입금 거래내역)
	@Override
	public int receiveAutoTrans(AutoTransferVO vo) {
		return sqlSession.insert("spring.mvc.teamProject.persistence.AutoTransferDAO.receiveAutoTrans", vo);
	}
	
	
}
