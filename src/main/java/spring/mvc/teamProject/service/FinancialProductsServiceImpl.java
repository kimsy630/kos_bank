package spring.mvc.teamProject.service;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.teamProject.persistence.FinancialProductsDAO;
import spring.mvc.teamProject.persistence.FinancialProductsDAOImpl;
import spring.mvc.teamProject.persistence.MembersDAOImpl;
import spring.mvc.teamProject.vo.AccountVO;
import spring.mvc.teamProject.vo.DepositVO;
import spring.mvc.teamProject.vo.FixedVO;
import spring.mvc.teamProject.vo.MembersVO;
import spring.mvc.teamProject.vo.savings_productVO;



@Service
public class FinancialProductsServiceImpl implements FinancialProductsService{
	
	@Autowired
	FinancialProductsDAO dao;
	
	@Override
	public void AccountList(HttpServletRequest req, Model model) {
		
		String strId = (String)req.getSession().getAttribute("id");
		
        List<AccountVO> list = dao.selectById(strId);
        
        model.addAttribute("list", list);

	}
	
	@Override
	public void SavingsList(HttpServletRequest req, Model model) {
		
		List<savings_productVO> list = dao.getSavingsList();
		
		model.addAttribute("list", list);
	}

	@Override
	public void DepositList(HttpServletRequest req, Model model) {
		
		List<DepositVO> list = dao.getDepositList();
		
		model.addAttribute("list", list);	
	}

	@Override
	public void SavingsDetail(HttpServletRequest req, Model model) {
		
		String j_name = (String)req.getAttribute("j_name");
		
		savings_productVO vo = dao.getSavingsDetail(j_name);
		
		model.addAttribute("vo", vo);
	}

	@Override
	public void DepositDetail(HttpServletRequest req, Model model) {
		
		String y_name = (String)req.getAttribute("y_name");
		
		DepositVO vo = dao.getDepositDetail(y_name);
		
		model.addAttribute("vo", vo);
		
	}

	@Override
	public void SavingsAction(HttpServletRequest req, Model model) {
		
		
		
	}

	@Override
	public void DepositAction(HttpServletRequest req, Model model) {
		
		FixedVO vo = new FixedVO();
		AccountVO vo2 = new AccountVO();
		int insertCnt = 3;
		
		String ID = req.getParameter("ID").toString();  								// 아이디  
		String y_name = req.getParameter("y_name").toString(); 							// 예금상품이름
		double y_rate = Double.parseDouble(req.getParameter("y_rate").toString());  	// 이자율
		int y_balance = Integer.parseInt(req.getParameter("y_balance").toString()); 	// 최초예치금액
		int y_type = Integer.parseInt(req.getParameter("y_type").toString());			// 복리/단리
		int accountPW = Integer.parseInt(req.getParameter("pw").toString());			// 가입계좌 비밀번호
		int months = Integer.parseInt(req.getParameter("months").toString());			// 계약월수
		int pwWithdraw = Integer.parseInt(req.getParameter("pwWithdraw").toString());	// 이체용 계좌비밀번호
		String accounts = req.getParameter("accounts").toString();						// 이체용 계좌번호
		
		
		vo2.setAccount(accounts);								// 이체용 계좌번호
		vo2.setAccountPW(pwWithdraw);							// 이체용 계좌비밀번호
		vo2.setBalance(y_balance);								// 이체용 계좌 조회용 최초예치금액 
		insertCnt = dao.checkPwd(vo2);							// 1.이체/출금용 계좌 비밀번호 일치 여부확인
		if(insertCnt == 0) {	// 불일치시
			model.addAttribute("insertCnt", insertCnt);
			return;
		}
		
		insertCnt = dao.checkBalance(vo2);						// 2. 이체/출금용 계좌에서 이체할 금액이 있나 잔고확인
		if(insertCnt == 0) {	// 잔고부족시
			insertCnt = 2;
			model.addAttribute("insertCnt", insertCnt);
			model.addAttribute("y_name", y_name);
			return;
		}
		
		String account = dao.getAccount();
		vo2.setAccount(account);
		vo2.setId(ID);						
		vo2.setAccountPW(accountPW);
		insertCnt = dao.insertDepositAccount(vo2);  			// 3. 예금계좌개설
		
		if(insertCnt == 1) {
			Date date = new Date();
			long time = date.getTime();
			Timestamp ts = new Timestamp(time);
			Calendar cal = Calendar.getInstance();
			cal.setTime(ts);
			cal.add(Calendar.MONTH, months);
			ts.setTime(cal.getTime().getTime());
			
			vo.setY_name(y_name);
			vo.setAccount(account);
			vo.setY_rate(y_rate);
			vo.setY_type(y_type);
			vo.setY_balance(y_balance);
			vo.setY_end_date(ts);
			
			insertCnt = dao.insertDeposit(vo);					// 4. 예금테이블에 삽입
			model.addAttribute("insertCnt", insertCnt);
			return;
		}
		model.addAttribute("insertCnt", insertCnt); // 예금계좌개설실패시
		return;
	}

}
