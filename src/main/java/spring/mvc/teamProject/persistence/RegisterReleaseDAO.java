package spring.mvc.teamProject.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import spring.mvc.teamProject.vo.AccountVO;
import spring.mvc.teamProject.vo.MembersVO;

@Repository
public interface RegisterReleaseDAO{
	// 계좌 개설
	public int insertAccount(AccountVO accountvo);
	
	// 계좌해지
	public int deleteAccount(Map<String, Object> map);
	
	// 보유 전체계좌 리스트
	public List<AccountVO> selectById(String id);
	
	// 보유 계좌(정상) 리스트
	public List<AccountVO> selectNomalById(String id);
	
	// 보유 계좌(입출금) 리스트
	public List<AccountVO> selectType(String id);
	
	// 예금주 조회
	public String AccountNameChk(String account);
	
	// 계좌비밀번호 Chk
	public int AccountPwdCheck(String aacount);
	
	// ID로 회원이름 조회
	public String IdNameChk(String id);
	
}
