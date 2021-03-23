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

import spring.mvc.teamProject.vo.MembersVO;



@Repository
public class FinancialProductsDAOImpl implements FinancialProductsDAO{
	
	@Autowired
	SqlSession sqlSession;
	
	@Autowired
    private JavaMailSender mailSender; // xml에 등록한 bean autowired


}
