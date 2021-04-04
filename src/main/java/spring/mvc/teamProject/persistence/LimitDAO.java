package spring.mvc.teamProject.persistence;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import spring.mvc.teamProject.vo.AccountVO;
import spring.mvc.teamProject.vo.LimitVO;

@Repository
public interface LimitDAO {
	public List<String> getAccount(String id);
	public AccountVO AccountLimitSearch(String account);
	public int AccountPwdCheck(Map<String, Object> map);
	public int insertLimit(Map<String, Object> map);
	
	//한도변경할 리스트
	public List<LimitVO> getLimit();
	
	//
	public List<LimitVO>getDeleteLimitList();
	
	//한도변경 업데이트
	public int accountLimitUpdate(Map<String,Object> map);
	
	//한도변경 성공한애들 업데이트 침
	public int LimitUseUpdate(int l_key);
	
	//초기화해줄 리스트뽑아냄
	public List<LimitVO> getLimitResetList();
	
	//한도 초기화 해줌
	public int accountResetUpdate(String account);
	
	public int limitDelete(int l_key);
}
