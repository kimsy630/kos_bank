package spring.mvc.teamProject.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.teamProject.vo.LoansVO;

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
	public LoansVO getLoanPrincipal(String account) { // 대출원금 예상(내부정보)
		LoansVO vo = sqlSession.selectOne("spring.mvc.teamProject.persistence.LoanCenterDAO.getLoanPrincipal", account);
		return vo;
	}
	// ============================================================================
	
}
