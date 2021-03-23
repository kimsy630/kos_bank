package spring.mvc.teamProject.persistence;

import org.springframework.stereotype.Repository;

import spring.mvc.teamProject.vo.AccountVO;

@Repository
public interface RegisterReleaseDAO{
	// 계좌 개설
	public int insertAccount(AccountVO accountvo);
	
	// 계좌해지
	public int deleteAccount();
}
