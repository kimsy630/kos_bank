package spring.mvc.teamProject.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.teamProject.vo.AccountVO;
import spring.mvc.teamProject.vo.DepositVO;
import spring.mvc.teamProject.vo.Loans_productVO;
import spring.mvc.teamProject.vo.SavingsVO;

@Repository
public class FinancialProductsDAOImpl implements FinancialProductsDAO{
	
	@Autowired
	SqlSession sqlSession;

	// ============================================================================
	// 박서하
	@Override
	public int getLoanCount() { // 대출상품 조회
		int count = sqlSession.selectOne("spring.mvc.teamProject.persistence.FinancialProductsDAO.getLoanCount");
		return count;
	}
	
	@Override
	public List<Loans_productVO> getLoanList() { // 대출상품 조회
		List<Loans_productVO> list = sqlSession.selectList("spring.mvc.teamProject.persistence.FinancialProductsDAO.getLoanList");
		return list;
	}

	@Override
	public Loans_productVO getLoanDetail(String d_name) { // 대출상품 상세조회
		Loans_productVO vo = sqlSession.selectOne("spring.mvc.teamProject.persistence.FinancialProductsDAO.getLoanDetail", d_name);
		return vo;
	}

	// ============================================================================

	@Override
	public List<AccountVO> selectById(String id) {
		
		return sqlSession.getMapper(FinancialProductsDAO.class).selectById(id);
	}

	@Override
	public List<SavingsVO> getSavingsList() {
		
		return sqlSession.getMapper(FinancialProductsDAO.class).getSavingsList();
	}

	@Override
	public List<DepositVO> getDepositList() {
		
		return sqlSession.getMapper(FinancialProductsDAO.class).getDepositList();
	}

	@Override
	public SavingsVO getSavingsDetail(String j_name) {
		
		return sqlSession.getMapper(FinancialProductsDAO.class).getSavingsDetail(j_name);
	}

	@Override
	public SavingsVO getDepositDetail(String y_name) {
		
		return sqlSession.getMapper(FinancialProductsDAO.class).getDepositDetail(y_name);
	}

	@Override
	public int insertSavings(SavingsVO vo) {
		
		return sqlSession.getMapper(FinancialProductsDAO.class).insertSavings(vo);
		
	}

	@Override
	public int insertDeposit(DepositVO vo) {
		
		return sqlSession.getMapper(FinancialProductsDAO.class).insertDeposit(vo);
		
	}



	
	
	
	
	

}
