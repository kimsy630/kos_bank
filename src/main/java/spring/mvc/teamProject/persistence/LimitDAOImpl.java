package spring.mvc.teamProject.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.teamProject.vo.AccountVO;
import spring.mvc.teamProject.vo.LimitVO;

@Repository
public class LimitDAOImpl implements LimitDAO{

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<String> getAccount(String id) {
		return sqlSession.getMapper(LimitDAO.class).getAccount(id);
	}

	@Override
	public AccountVO AccountLimitSearch(String account) {
		return sqlSession.getMapper(LimitDAO.class).AccountLimitSearch(account);
	}

	@Override
	public int AccountPwdCheck(Map<String, Object> map) {
		return sqlSession.getMapper(LimitDAO.class).AccountPwdCheck(map);
	}

	@Override
	public int insertLimit(Map<String, Object> map) {	
		return sqlSession.getMapper(LimitDAO.class).insertLimit(map);
	}

	@Override
	public List<LimitVO> getLimit() {
		return sqlSession.getMapper(LimitDAO.class).getLimit();
	}

	@Override
	public List<LimitVO> getDeleteLimitList() {
		return sqlSession.getMapper(LimitDAO.class).getDeleteLimitList();
	}

	@Override
	public int accountLimitUpdate(Map<String, Object> map) {
		return sqlSession.getMapper(LimitDAO.class).accountLimitUpdate(map);
	}

	@Override
	public int LimitUseUpdate(int l_key) {
		 return sqlSession.getMapper(LimitDAO.class).LimitUseUpdate(l_key);
	}

	@Override
	public List<LimitVO> getLimitResetList() {
		 return sqlSession.getMapper(LimitDAO.class).getLimitResetList();
	}

	@Override
	public int accountResetUpdate(String account) {
		return sqlSession.getMapper(LimitDAO.class).accountResetUpdate(account);
	}

	@Override
	public int limitDelete(int l_key) {
		return sqlSession.getMapper(LimitDAO.class).limitDelete(l_key);
	}
}
