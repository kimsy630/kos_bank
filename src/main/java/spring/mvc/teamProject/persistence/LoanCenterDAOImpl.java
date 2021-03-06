package spring.mvc.teamProject.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.teamProject.vo.AccountVO;
import spring.mvc.teamProject.vo.LoansVO;
import spring.mvc.teamProject.vo.Loans_historyVO;
import spring.mvc.teamProject.vo.Loans_productVO;

@Repository
public class LoanCenterDAOImpl implements LoanCenterDAO {

	@Autowired
	SqlSession sqlSession;
	
	// ============================================================================
	// 박서하
	@Override
	public List<LoansVO> getLoanAccountList(String id) { // 대출계좌 조회
		List<LoansVO> list = sqlSession.selectList("spring.mvc.teamProject.persistence.LoanCenterDAO.getLoanAccountList", id);
		return list;
	}

	@Override
	public LoansVO getLoanAccountDetail(Map<String, Object> map) { // 대출계좌 상세조회
		LoansVO vo = sqlSession.selectOne("spring.mvc.teamProject.persistence.LoanCenterDAO.getLoanAccountDetail", map);
		return vo;
	}

	@Override
	public List<Loans_historyVO> getLoanHistoryDetail(String account) { // 대출계좌 상세조회(대출상환(납입) 내역)
		List<Loans_historyVO> list = sqlSession.selectList("spring.mvc.teamProject.persistence.LoanCenterDAO.getLoanHistoryDetail", account);
		return list;
	}
	
	@Override
	public List<LoansVO> getLoanCloseList(String id) { // 대출해지현황 조회
		List<LoansVO> list = sqlSession.selectList("spring.mvc.teamProject.persistence.LoanCenterDAO.getLoanCloseList", id);
		return list;
	}

	@Override
	public LoansVO getLoanCloseDetail(Map<String, Object> map) { // 대출해지현황 상세조회
		LoansVO vo = sqlSession.selectOne("spring.mvc.teamProject.persistence.LoanCenterDAO.getLoanCloseDetail", map);
		return vo;
	}

	@Override
	public LoansVO getLoanPrincipal(String account) { // 대출원금 예상
		LoansVO vo = sqlSession.selectOne("spring.mvc.teamProject.persistence.LoanCenterDAO.getLoanPrincipal", account);
		return vo;
	}

	@Override
	public int payLoanPrincipal1(LoansVO vo) { // 대출원금 상환 실행(Loans 변경 1-2)
		int updateCnt = sqlSession.update("spring.mvc.teamProject.persistence.LoanCenterDAO.payLoanPrincipal1", vo);
		return updateCnt;
	}
	
	@Override
	public int payLoanPrincipal2(Loans_historyVO vo) { // 대출원금 상환 실행(Loans_history 생성 1-3)
		int insertCnt = sqlSession.insert("spring.mvc.teamProject.persistence.LoanCenterDAO.payLoanPrincipal2", vo);
		return insertCnt;
	}
	
	@Override
	public LoansVO checkLoanEnd(String account) { // 대출원금 상환완료 확인
		LoansVO vo = sqlSession.selectOne("spring.mvc.teamProject.persistence.LoanCenterDAO.checkLoanEnd", account);
		return vo;
	}
	
	@Override
	public int d_amountPayAll(String account) { // 대출원금 상환완료 업데이트
		int updateCnt = sqlSession.update("spring.mvc.teamProject.persistence.LoanCenterDAO.d_amountPayAll", account);
		return updateCnt;
	}
	
	@Override
	public int LoanEnd(LoansVO vo) { // 대출원금 상환완료 후 해지
		int updateCnt = sqlSession.update("spring.mvc.teamProject.persistence.LoanCenterDAO.LoanEnd", vo);
		return updateCnt;
	}

	@Override
	public int LoanAccountEnd(String account) { // 계좌(대출) 해지
		int updateCnt = sqlSession.update("spring.mvc.teamProject.persistence.LoanCenterDAO.LoanAccountEnd", account);
		return updateCnt;
	}
	
	@Override
	public LoansVO getLoanRateCheckIn(String account) { // 대출이자 예상(내부정보)
		LoansVO vo = sqlSession.selectOne("spring.mvc.teamProject.persistence.LoanCenterDAO.getLoanRateCheckIn", account);
		return vo;
	}

	@Override
	public int payLoanRate1(LoansVO vo) { // 대출이자 납입 실행(Loans 변경 1-2)
		int updateCnt = sqlSession.update("spring.mvc.teamProject.persistence.LoanCenterDAO.payLoanRate1", vo);
		return updateCnt;
	}
	
	@Override
	public int payLoanRate2(Loans_historyVO vo) { // 대출이자 납입 실행(Loans_historyVO 생성 1-3)
		int insertCnt = sqlSession.insert("spring.mvc.teamProject.persistence.LoanCenterDAO.payLoanRate2", vo);
		return insertCnt;
	}
	
	@Override
	public Loans_productVO getLoanApplication(String d_name) { // 신규대출 신청
		Loans_productVO vo = sqlSession.selectOne("spring.mvc.teamProject.persistence.LoanCenterDAO.getLoanApplication", d_name);
		return vo;
	}
	
	@Override
	public List<AccountVO> getCheckingaccount(String id) { // 신규대출 신청(입출금 계좌)
		List<AccountVO> list = sqlSession.selectList("spring.mvc.teamProject.persistence.LoanCenterDAO.getCheckingaccount", id);
		return list;
	}
	
	@Override
	public String getName(String id) { // 신규대출 신청(이름)
		String name = sqlSession.selectOne("spring.mvc.teamProject.persistence.LoanCenterDAO.getName", id);
		return name;
	}
	
	@Override
	public int checkPwd(AccountVO vo) { // 신규대출 신청(입출금계좌 비밀번호 확인)		
		return sqlSession.getMapper(LoanCenterDAO.class).checkPwd(vo);
	}
	
	@Override
	public int insertAccount(AccountVO vo) { // 신규대출 신청 실행(계좌 생성)
		int insertCnt = sqlSession.insert("spring.mvc.teamProject.persistence.LoanCenterDAO.insertAccount", vo);
		return insertCnt;
	}
	
	@Override
	public int insertLoan(LoansVO vo) { // 신규대출 신청 실행(대출 생성)
		int insertCnt = sqlSession.insert("spring.mvc.teamProject.persistence.LoanCenterDAO.insertLoan", vo);
		return insertCnt;
	}
	
	@Override
	public String getLoanAccount() { // 신규대출 신청 실행(자동이체 신청-공통)
		String account = sqlSession.selectOne("spring.mvc.teamProject.persistence.LoanCenterDAO.getLoanAccount");
		return account;
	}
	
	@Override
	public LoansVO getLoanInfo(String account) { // 신규대출 신청 실행(자동이체 신청-공통)
		LoansVO vo = sqlSession.selectOne("spring.mvc.teamProject.persistence.LoanCenterDAO.getLoanInfo", account);
		return vo;
	}
	
	@Override
	public LoansVO getAutoLoan(String d_key) { // 자동이체 대출정보
		LoansVO vo = sqlSession.selectOne("spring.mvc.teamProject.persistence.LoanCenterDAO.getAutoLoan", d_key);
		return vo;
	}
	// ============================================================================

	
}
