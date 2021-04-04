package spring.mvc.teamProject.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.teamProject.vo.FundingVO;
import spring.mvc.teamProject.vo.FundCommentVO;
import spring.mvc.teamProject.vo.FundInvestorVO;
import spring.mvc.teamProject.vo.MembersVO;

@Repository
public class FundingDAOImpl implements FundingDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	// 펀드 목록 전체 조회
	@Override
	public List<FundingVO> getFundingAllInfo() {
		FundingDAO dao = sqlSession.getMapper(FundingDAO.class);
		
		return dao.getFundingAllInfo();
	}
	
	// 펀드 목록 카테고리별 조회
	@Override
	public List<FundingVO> getFundingCategoryInfo(String f_category) {
		FundingDAO dao = sqlSession.getMapper(FundingDAO.class);
		
		return dao.getFundingCategoryInfo(f_category);
	}
	
	// 펀드 상세내용 조회
	@Override
	public List<FundingVO> getFundingContent(int f_num) {
		FundingDAO dao = sqlSession.getMapper(FundingDAO.class);
		
		return dao.getFundingContent(f_num);
	}
	
	// 펀드 댓글 가져오기
	@Override
	public List<FundCommentVO> readComment(int f_num) {
		FundingDAO dao = sqlSession.getMapper(FundingDAO.class);
		
		return dao.readComment(f_num);
	}
	
	// 펀드 댓글 작성
	@Override
	public int writeComment(Map<String, Object> map) {
		return sqlSession.getMapper(FundingDAO.class).writeComment(map);
	}
	
	// 펀드 구매(참자가 정보 등록)
	@Override
	public int registerInvestor(Map<String, Object> map) {
		return sqlSession.getMapper(FundingDAO.class).registerInvestor(map);
	}
	
	// 펀드 구매(참가자 계좌에서 출금)
	@Override
	public int withdrawInvestorAccount(Map<String, Object> map) {
		return sqlSession.getMapper(FundingDAO.class).withdrawInvestorAccount(map);
	}
	
	// 펀드 구매(등록자 계좌에 입금)
	@Override
	public int depositRegistrantAccount(Map<String, Object> map) {
		return sqlSession.getMapper(FundingDAO.class).depositRegistrantAccount(map);
	}
	
	// 펀드 구매(입금에 대한 이체 history 작성)
	@Override
	public int depositAccountTransfer(Map<String, Object> map) {
		return sqlSession.getMapper(FundingDAO.class).depositAccountTransfer(map);
	}
	
	// 펀드 구매(출금에 대한 history 작성)
	@Override
	public int withdrawAccountTransfer(Map<String, Object> map) {
		return sqlSession.getMapper(FundingDAO.class).withdrawAccountTransfer(map);
	}
	
	// 펀드 댓글 가져오기
	@Override
	public List<FundInvestorVO> getFundInvestorInfo(int f_num) {
		FundingDAO dao = sqlSession.getMapper(FundingDAO.class);
		
		return dao.getFundInvestorInfo(f_num);
	}
	
	// 펀드 등록
	@Override
	public int addFund(Map<String, Object> map) {
		return sqlSession.getMapper(FundingDAO.class).addFund(map);
	}
	
	// 구매자 정보 가져오기
	@Override
	public List<MembersVO> getMemberInfo(String id) {
		FundingDAO dao = sqlSession.getMapper(FundingDAO.class);
		
		return dao.getMemberInfo(id);
	}
}
