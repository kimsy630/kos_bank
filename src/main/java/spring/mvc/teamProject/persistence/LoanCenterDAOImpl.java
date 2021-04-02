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
	public int payLoanPrincipal2(Loans_historyVO vo) { // 대출원금 상환 실행(Loans 변경 1-2)
		int insertCnt = sqlSession.insert("spring.mvc.teamProject.persistence.LoanCenterDAO.payLoanPrincipal2", vo);
		return insertCnt;
	}
	
	@Override
	public LoansVO getLoanRateCheckIn(String account) { // 대출이자 예상(내부정보)
		LoansVO vo = sqlSession.selectOne("spring.mvc.teamProject.persistence.LoanCenterDAO.getLoanRateCheckIn", account);
		return vo;
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
	public int insertAccount(AccountVO vo) { // 신규대출 신청 실행(계좌 생성)
		int insertCnt = sqlSession.insert("spring.mvc.teamProject.persistence.LoanCenterDAO.insertAccount", vo);
		return insertCnt;
	}
	
	@Override
	public int insertLoan(LoansVO vo) { // 신규대출 신청 실행(대출 생성)
		int insertCnt = sqlSession.insert("spring.mvc.teamProject.persistence.LoanCenterDAO.insertLoan", vo);
		return insertCnt;
	}
	
	// ============================================================================

}
