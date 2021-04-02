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
}
