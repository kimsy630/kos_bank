package spring.mvc.teamProject.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.teamProject.vo.AccountVO;

@Repository
public class RegisterReleaseDAOImpl implements RegisterReleaseDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override  
	public int insertAccount(AccountVO vo) {
		return sqlSession.getMapper(RegisterReleaseDAO.class).insertAccount(vo);
		//return sqlSession.insert("spring.mvc.teamProject.persistence.RegisterReleaseDAO.insertAccount", vo);
	}

	@Override
	public int deleteAccount() {
		// TODO Auto-generated method stub
		return 0;
	}

}
