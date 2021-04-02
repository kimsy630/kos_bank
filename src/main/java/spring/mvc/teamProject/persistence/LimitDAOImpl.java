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
}
