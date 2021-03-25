package spring.mvc.teamProject.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import spring.mvc.teamProject.vo.AccountVO;

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
	
	// 계좌비밀번호 Chk
	public int AccountPwdCheck(String id);
	
}
