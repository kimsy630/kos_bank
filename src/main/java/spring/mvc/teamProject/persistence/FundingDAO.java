package spring.mvc.teamProject.persistence;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import spring.mvc.teamProject.vo.FundingVO;
import spring.mvc.teamProject.vo.FundCommentVO;
import spring.mvc.teamProject.vo.FundInvestorVO;
import spring.mvc.teamProject.vo.MembersVO;

@Repository
public interface FundingDAO {
	// 펀드 목록 전체 조회
	public List<FundingVO> getFundingAllInfo();
		
	// 펀드 목록 카테고리별 조회
	public List<FundingVO> getFundingCategoryInfo(String f_category);
	
	// 펀드 상세내용 조회 
	public List<FundingVO> getFundingContent(int f_num);
	
	// 펀드 댓글 가져오기
	public List<FundCommentVO> readComment(int f_num);
	
	// 펀드 댓글 작성
	public int writeComment(Map<String, Object> map);
	
	// 펀드 구매(참자가 정보 등록)
	public int registerInvestor(Map<String, Object> map);
	
	// 펀드 구매(참가자 계좌에서 출금)
	public int withdrawInvestorAccount(Map<String, Object> map);
	
	// 펀드 구매(등록자 계좌에 입금)
	public int depositRegistrantAccount(Map<String, Object> map);
	
	// 펀드 구매(입금에 대한 이체 history 작성)
	public int depositAccountTransfer(Map<String, Object> map);
	
	// 펀드 구매(입금에 대한 이체 history 작성)
	public int withdrawAccountTransfer(Map<String, Object> map);
	
	// 펀드 참가자들 리스트 가져오기
	public List<FundInvestorVO> getFundInvestorInfo(int f_num);
		
	// 펀드 등록
	public int addFund(Map<String, Object> map);
	
	// 구매자 정보 가져오기
	public List<MembersVO> getMemberInfo(String id);
	
	
}
