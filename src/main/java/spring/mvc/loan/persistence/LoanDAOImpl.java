package spring.mvc.loan.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.loan.vo.LoanVO;

@Repository
public class LoanDAOImpl implements LoanDAO {

	@Autowired
	SqlSession sqlSession;
	
	// FinancialProductsController
	@Override
	public int getLoanCount() { // 대출상품 조회
		int count = sqlSession.selectOne("spring.mvc.loan.persistence.LoanDAO.getLoanCount");
		return count;
	}
	
	@Override
	public List<LoanVO> getLoanList() { // 대출상품 조회
		List<LoanVO> list = sqlSession.selectList("spring.mvc.loan.persistence.LoanDAO.getLoanList");
		return list;
	}

	@Override
	public LoanVO getLoanDetail(String d_name) { // 대출상품 상세조회
		LoanVO vo = sqlSession.selectOne("spring.mvc.loan.persistence.LoanDAO.getLoanDetail", d_name);
		return vo;
	}

	// ============================================================================
	// LoanCenterController
	@Override
	public int getLoanAccountCount(String id) { // 대출계좌 조회
		int count = sqlSession.selectOne("spring.mvc.loan.persistence.LoanDAO.getLoanAccountCount", id);
		return count;
	}
	
	@Override
	public List<LoanVO> getLoanAccountList(String id) { // 대출계좌 조회
		List<LoanVO> list = sqlSession.selectList("spring.mvc.loan.persistence.LoanDAO.getLoanAccountList", id);
		return list;
	}

	@Override
	public LoanVO getLoanAccountDetail(LoanVO vo) { // 대출계좌 상세조회
		LoanVO vo2 = sqlSession.selectOne("spring.mvc.loan.persistence.LoanDAO.getLoanAccountDetail", vo);
		return vo2;
	}

	@Override
	public int getLoanCloseCount(String id) { // 대출해지현황 조회
		int count = sqlSession.selectOne("spring.mvc.loan.persistence.LoanDAO.getLoanCloseCount", id);
		return count;
	}

	@Override
	public List<LoanVO> getLoanCloseList(String id) { // 대출해지현황 조회
		List<LoanVO> list = sqlSession.selectList("spring.mvc.loan.persistence.LoanDAO.getLoanCloseList", id);
		return list;
	}

	@Override
	public LoanVO getLoanCloseDetail(LoanVO vo) { // 대출해지현황 상세조회
		LoanVO vo2 = sqlSession.selectOne("spring.mvc.loan.persistence.LoanDAO.getLoanCloseDetail", vo);
		return vo2;
	}

	
	
	
}
