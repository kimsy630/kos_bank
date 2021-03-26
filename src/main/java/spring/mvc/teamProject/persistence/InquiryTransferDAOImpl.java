package spring.mvc.teamProject.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.teamProject.vo.TransferVO;

@Repository
public class InquiryTransferDAOImpl implements InquiryTransferDAO{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int addMyLog(TransferVO transferVO) {
		return sqlSession.insert("spring.mvc.teamProject.persistence.InquiryTransferDAO.addMyLog", transferVO);
	}

	@Override
	public int addYourLog(TransferVO transferVO) {
		return sqlSession.insert("spring.mvc.teamProject.persistence.InquiryTransferDAO.addYourLog", transferVO);
	}

	@Override
	public int withdrawal(TransferVO transferVO) {
		return sqlSession.update("spring.mvc.teamProject.persistence.InquiryTransferDAO.withdrawal", transferVO);
	}

	@Override
	public int deposit(TransferVO transferVO) {
		return sqlSession.update("spring.mvc.teamProject.persistence.InquiryTransferDAO.deposit", transferVO);
	}

}
