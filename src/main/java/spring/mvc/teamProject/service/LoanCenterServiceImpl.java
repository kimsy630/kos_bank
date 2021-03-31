package spring.mvc.teamProject.service;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;


import spring.mvc.teamProject.persistence.LoanCenterDAOImpl;
import spring.mvc.teamProject.vo.AccountVO;
import spring.mvc.teamProject.vo.LoansVO;
import spring.mvc.teamProject.vo.Loans_productVO;

@Service
public class LoanCenterServiceImpl implements LoanCenterService {

	@Autowired
	LoanCenterDAOImpl dao;
	
	// ============================================================================
	// 박서하
	@Override
	public void LoanAccountCheck(HttpServletRequest req, Model model) { // 대출계좌 조회
		String id = (String)req.getSession().getAttribute("id");
		
		List<LoansVO> list = dao.getLoanAccountList(id);

		model.addAttribute("list", list);
	}

	@Override
	public void LoanAccountDetail(HttpServletRequest req, Model model) { // 대출계좌 상세조회
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("account", req.getParameter("account"));
		
		LoansVO vo = dao.getLoanAccountDetail(map);
		
		model.addAttribute("vo", vo);
	}

	@Override
	public void LoanCloseCheck(HttpServletRequest req, Model model) { // 대출해지현황 조회
		String id = (String)req.getSession().getAttribute("id");
		
		List<LoansVO> list = dao.getLoanCloseList(id);
		
		model.addAttribute("list", list);
	}

	@Override
	public void LoanCloseDetail(HttpServletRequest req, Model model) { // 대출해지현황 상세조회
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("account", req.getParameter("account"));
		
		LoansVO vo = dao.getLoanCloseDetail(map);
		
		model.addAttribute("vo", vo);
	}
	
	@Override
	public void LoanPrincipalCheck(HttpServletRequest req, Model model) { // 대출원금 조회
		String id = (String)req.getSession().getAttribute("id");
		
		List<LoansVO> list = dao.getLoanAccountList(id);
		
		model.addAttribute("list", list);
	} 
	
	
	@Override
	public void LoanPrincipalCheckIn(HttpServletRequest req, Model model) { // 대출원금 예상(내부정보)
		LoansVO vo = new LoansVO();
		
		String account = req.getParameter("selectAccount");
		int d_balance = Integer.parseInt(req.getParameter("d_balance"));
		String redemption = req.getParameter("redemption");
		int d_tran = 0;
		int d_amount = Integer.parseInt(req.getParameter("d_amount"));
		int d_month = Integer.parseInt(req.getParameter("d_month"));
		double d_ERR = Double.parseDouble(req.getParameter("d_ERR"));
		int d_ERC = 0;
		String d_start_date = req.getParameter("d_start_date");
		String d_end_date = req.getParameter("d_end_date");
		
		vo.setAccount(account);
		vo.setD_amount(d_amount);
		vo.setD_month(d_month);
		
		if(redemption.equals("equality")) {
			d_tran = d_amount / d_month;
			d_balance = d_balance - d_tran;
			
			vo.setD_balance(d_balance);
			vo.setD_tran(d_tran);
			vo.setD_ERC(0);
			
		} else if(redemption.equals("early")) {
			Timestamp todayT = Timestamp.valueOf(LocalDateTime.now());
			Timestamp d_start_dateT = Timestamp.valueOf(d_start_date);
			Timestamp d_end_dateT = Timestamp.valueOf(d_end_date);
			
			Date todayD = new java.sql.Date(todayT.getTime());
			Date d_start_dateD = new java.sql.Date(d_start_dateT.getTime());
			Date d_end_dateD = new java.sql.Date(d_end_dateT.getTime());
			
			long calRest = d_end_dateD.getTime() - todayD.getTime();
			long rest = calRest / (24*60*60*1000);
			System.out.println("before rest  : " + rest);
			rest = Math.abs(rest);
			System.out.println("잔여일자 : "+ rest);
			
			long calTotal = d_end_dateD.getTime() - d_start_dateD.getTime(); 
			long total = calTotal / (24*60*60*1000); 
			total = Math.abs(total);
			System.out.println("약정일자 : "+ total);
			
			System.out.println("계산 : "+ (float)rest/(float)total);
			
			long calCheck = todayD.getTime() - d_start_dateD.getTime(); 
			long check = calCheck / (24*60*60*1000);
			
			if (check > 1095) { // 실행일자로부터 3년 경과 후 중도상환수수료 면제
				d_ERR = 0;
			}
			
			d_tran = Integer.parseInt(req.getParameter("d_tran"));
			d_ERC = (int) (d_tran * d_ERR * ((float)rest/(float)total)); // 대출상환금액*수수료율*(잔여일수 / 약정기간)]
			System.out.println(d_ERC);
			d_balance = d_balance - d_tran;
			
			vo.setD_balance(d_balance);
			vo.setD_ERC(d_ERC);
			vo.setD_tran(d_tran);
		}
		
		model.addAttribute("redemption", redemption);
		model.addAttribute("vo", vo);
	}

	@Override
	public void LoanRateCheck(HttpServletRequest req, Model model) { // 대출이자 조회
		String id = (String)req.getSession().getAttribute("id");
		
		List<LoansVO> list = dao.getLoanAccountList(id);
		
		model.addAttribute("list", list);
		
//		list 자동이체할거 가저온곳;
//		//계좌이체 성공한 계좌?...   자동이체?
//		List<String> account = new ArrayList<String>();
//		List<String> 실패 = new ArrayList<String>();
//		for(int i=0;i<list.size();i++) {
//			이자계산 하고 만들어
//			.
//			 int updateCnt = dao.계좌이체(list.get(i));
//
//			보내기전에 돈있는지 보낼계좌?//실패하면 입금 안하기
//			 보낸사람 받는사람 출금
//			 받는사람 보낸사람 입금
//			 33-09-0000001 <<관리자계좌
//			 
//			 if(updateCnt = 1) {
//				 account.add(list.getAccount());
//			 }else {
//				 실패.add(list.getAccount());
//			 }
//		}
//		
//		for(int i=0;i<account.size();i++) {
//			dao.성공한거 업데이트 +1  누액도 증가?  (account.get(i));
//			dao.히스토리 인서트(뭔가 넣고..);
//		}
		
	}
	
	@Override
	public void LoanRateCheckIn(HttpServletRequest req, Model model) { // 대출이자 예상(내부정보)
		LoansVO vo = new LoansVO();
		
		// String account = req.getParameter("selectAccount");
		int d_tran_rate = 0;
		String d_repay = req.getParameter("d_repay");
		double d_rate = Double.parseDouble(req.getParameter("d_rate"));
		int d_amount = Integer.parseInt(req.getParameter("d_amount"));
		int d_balance = Integer.parseInt(req.getParameter("d_balance"));
		// int d_next_rate = Integer.parseInt(req.getParameter("d_next_rate"));
		
		if(d_repay.equals("원금균등분할")) { // 전회차 원금잔액*(금리%12개월)
			d_tran_rate = (int) (d_balance*((d_rate*0.01)/12));
			
			vo.setD_tran_rate(d_tran_rate);
		} else if(d_repay.equals("만기일시")) { // 대출원금*(금리%12개월)
			d_tran_rate = (int) (d_amount*((d_rate*0.01)/12));
			
			vo.setD_tran_rate(d_tran_rate);
		}
		model.addAttribute("vo", vo);
	}
	// ============================================================================

	@Override
	public void LoanApplication(HttpServletRequest req, Model model) { // 신규대출 신청
		String id = (String)req.getSession().getAttribute("id");
		String d_name = req.getParameter("d_name");
		
		Loans_productVO vo = dao.getLoanApplication(d_name); // 신규대출 신청
		
		List<AccountVO> list = dao.getCheckingaccount(id); // 신규대출 신청(입출금 계좌)
		
		String name = dao.getName(id); // 신규대출 신청(이름)
		
		model.addAttribute("vo", vo);
		model.addAttribute("list", list);
		model.addAttribute("name", name);
	}

	@Override
	public void LoanApplicationAction(HttpServletRequest req, Model model) { // 신규대출 신청 실행
		AccountVO vo = new AccountVO();
		
		vo.setId((String)req.getSession().getAttribute("id"));
		vo.setAccountPW(Integer.parseInt(req.getParameter("accountPW")));
		vo.setBalance(Integer.parseInt(req.getParameter("d_amount")));
		vo.setAccountType(req.getParameter("accountType"));
		vo.setAccountState("대기");
		
		int insertCnt = dao.insertAccount(vo); // 신규대출 신청 실행(계좌 생성)
		System.out.println("계좌 생성 : " + insertCnt);
		
		LoansVO vo2 = new LoansVO();
		
		vo2.setD_name(req.getParameter("d_name"));
		System.out.println("이름: "+vo2.getD_name());
		vo2.setD_state(0);
		vo2.setD_month(Integer.parseInt(req.getParameter("d_month")));
		vo2.setD_repay(req.getParameter("d_repay"));
		vo2.setD_rate(Double.parseDouble(req.getParameter("d_rate")));
		vo2.setD_amount(Integer.parseInt(req.getParameter("d_amount")));
		vo2.setD_balance(Integer.parseInt(req.getParameter("d_amount")));
		vo2.setD_balance_rate(0); //없앨지 고민 좀 해보자★
		vo2.setD_loan_balance(0);
		vo2.setD_loan_rate(0);
		vo2.setD_tran(0);
		vo2.setD_tran_rate(0);
		vo2.setD_next_rate(1);
		vo2.setD_ERR(1.5);
		vo2.setD_ERC(0);
		vo2.setD_auto_account(req.getParameter("d_auto_account"));
		vo2.setD_auto_date(Integer.parseInt(req.getParameter("d_auto_date")));
		
		int insertCnt2 = dao.insertLoan(vo2); // 신규대출 신청 실행(대출 생성)
		System.out.println("대출 생성 : " + insertCnt2);
		
		model.addAttribute("insertCnt", insertCnt);
		model.addAttribute("insertCnt2", insertCnt2);
	}
}
