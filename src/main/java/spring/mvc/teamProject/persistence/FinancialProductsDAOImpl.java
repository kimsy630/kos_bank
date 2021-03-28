package spring.mvc.teamProject.persistence;

import java.util.List;
import java.util.Map;

import javax.mail.Message.RecipientType;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Repository;

import spring.mvc.teamProject.vo.AccountVO;
import spring.mvc.teamProject.vo.DepositVO;
import spring.mvc.teamProject.vo.FixedVO;
import spring.mvc.teamProject.vo.MembersVO;
import spring.mvc.teamProject.vo.installment_savingsVO;
import spring.mvc.teamProject.vo.savings_productVO;



@Repository
public class FinancialProductsDAOImpl implements FinancialProductsDAO{
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<AccountVO> selectById(String id) {
		
		return sqlSession.getMapper(FinancialProductsDAO.class).selectById(id);
	}
	
	@Override
	public int checkPwd(AccountVO vo) {
		
		return sqlSession.getMapper(FinancialProductsDAO.class).checkPwd(vo);
	}
	
	@Override
	public int checkBalance(AccountVO vo) {
		return sqlSession.getMapper(FinancialProductsDAO.class).checkBalance(vo);
	}
	
	@Override
	public String getDepositAccount() {
		
		return sqlSession.getMapper(FinancialProductsDAO.class).getDepositAccount();
	}

	@Override
	public String getSavingsAccount() {
		
		return sqlSession.getMapper(FinancialProductsDAO.class).getSavingsAccount();
	}
	
	@Override
	public List<savings_productVO> getSavingsList() {
		
		return sqlSession.getMapper(FinancialProductsDAO.class).getSavingsList();
	}

	@Override
	public List<DepositVO> getDepositList() {
		
		return sqlSession.getMapper(FinancialProductsDAO.class).getDepositList();
	}

	@Override
	public savings_productVO getSavingsDetail(String j_name) {
		
		return sqlSession.getMapper(FinancialProductsDAO.class).getSavingsDetail(j_name);
	}

	@Override
	public DepositVO getDepositDetail(String y_name) {
		
		return sqlSession.getMapper(FinancialProductsDAO.class).getDepositDetail(y_name);
	}
	
	
	
	@Override
	public int insertFreeSavings(installment_savingsVO vo) {
		
		return sqlSession.getMapper(FinancialProductsDAO.class).insertFreeSavings(vo);
		
	}
	
	@Override
	public int insertFixedSavings(installment_savingsVO vo) {
		
		return sqlSession.getMapper(FinancialProductsDAO.class).insertFixedSavings(vo);
		
	}

	@Override
	public int insertDepositAccount(AccountVO vo) {
		
		return sqlSession.getMapper(FinancialProductsDAO.class).insertDepositAccount(vo);
		
	}
	
	@Override
	public int insertDeposit(FixedVO vo) {
		
		return sqlSession.getMapper(FinancialProductsDAO.class).insertDeposit(vo);
		
	}

	@Override
	public int insertSavingsAccount(AccountVO vo) {
		
		return sqlSession.getMapper(FinancialProductsDAO.class).insertSavingsAccount(vo);
		
	}

	

	
	
	
	

	
	

	
	
	
	
	

}
