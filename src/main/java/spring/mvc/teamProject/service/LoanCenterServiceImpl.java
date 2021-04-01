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

import spring.mvc.teamProject.persistence.InquiryTransferDAO;
import spring.mvc.teamProject.persistence.LoanCenterDAOImpl;
import spring.mvc.teamProject.persistence.RegisterReleaseDAO;
import spring.mvc.teamProject.vo.AccountVO;
import spring.mvc.teamProject.vo.LoansVO;
import spring.mvc.teamProject.vo.Loans_historyVO;
import spring.mvc.teamProject.vo.Loans_productVO;
import spring.mvc.teamProject.vo.TransferVO;

@Service
public class LoanCenterServiceImpl implements LoanCenterService {

	@Autowired
	LoanCenterDAOImpl dao;
	
	@Autowired
	InquiryTransferDAO IDAO;
	
	@Autowired
	RegisterReleaseDAO RDAO;
	
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
		String account = req.getParameter("selectAccount");
		LoansVO vo = dao.getLoanPrincipal(account);

		String redemption = req.getParameter("redemption");
		int d_balance = vo.getD_balance();
		int d_amount = vo.getD_amount();
		int d_month = vo.getD_month();
		double d_ERR = vo.getD_ERR();
		Timestamp d_start_date = vo.getD_start_date();
		Timestamp d_end_date = vo.getD_end_date();

		int d_tran = 0;
		int d_ERC = 0;
		
		vo.setAccount(account);
		vo.setD_amount(d_amount);
		vo.setD_month(d_month);
		
		if(redemption.equals("equality")) { // 원금균등상환만 가능(만기일시는 radio 사라짐)
			
			d_tran = d_amount / d_month;
			d_balance = d_balance - d_tran;
			
			vo.setD_balance(d_balance);
			vo.setD_tran(d_tran);
			vo.setD_ERC(0);
			
		} else if(redemption.equals("early")) { // 중도상환
			Timestamp today = Timestamp.valueOf(LocalDateTime.now());
			
			Date todayD = new java.sql.Date(today.getTime());
			Date d_start_dateD = new java.sql.Date(d_start_date.getTime());
			Date d_end_dateD = new java.sql.Date(d_end_date.getTime());
			
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
			System.out.println("중도해지수수료: " + d_ERC);
			
			d_balance = d_balance - d_tran;
			
			vo.setD_balance(d_balance);
			vo.setD_ERC(d_ERC);
			vo.setD_tran(d_tran);
		}
		
		model.addAttribute("redemption", redemption);
		model.addAttribute("vo", vo);
	}

	@Override
	public void LoanPrincipalPay(HttpServletRequest req, Model model) { // 대출원금 상환 실행
		String strId = (String)req.getSession().getAttribute("id");
		
		List<AccountVO> list= new ArrayList<AccountVO>();
		
		list = RDAO.selectById(strId);
		System.out.println("list : " + list);
		
		// ========================================================================
		// 계좌이체(원금 상환) 1-1
		String d_auto_account = req.getParameter("d_auto_account"); // 출금 계좌
		
		int d_tran = Integer.parseInt(req.getParameter("d_tran")); // 상환 할 원금
		
		TransferVO vo = new TransferVO();
		
		vo.setAccount(d_auto_account); // 출금 계좌
		vo.setSender_account(req.getParameter("33-09-000001")); // KOS 본사 계좌 *하드코딩*
		
		vo.setMoney(d_tran);
		System.out.println("이체(할) 원금 : " + vo.getMoney());
		
		vo.setSender_name("");
		vo.setOut_comment(req.getParameter("원금상환"));
		vo.setIn_comment(req.getParameter("원금상환"));
		
		int mylog = IDAO.addMyLog(vo); // 내 계좌 이체내역
		int yourlog = IDAO.addYourLog(vo); // 상대 계좌 입금내역
		IDAO.withdrawal(vo); // 잔액 감소
		IDAO.deposit(vo); // 상대 잔액 추가
		
		System.out.println("원금상환 mylog : " + mylog);
		System.out.println("원금상환 yourlog : " + yourlog);
		System.out.println("원금상환 vo : " + vo);
		
		// ------------------------------------------------
		// Loans 변경 1-2
		int d_Key = Integer.parseInt(req.getParameter("d_Key"));
		String account = req.getParameter("account"); // 대출 계좌
		int d_balance = Integer.parseInt(req.getParameter("d_balance"));
		String redemption = req.getParameter("redemption"); // 원금상환인지 중도상환인지 여부
		
		if(mylog == 1 || yourlog == 1) {
			LoansVO vo3 = new LoansVO();
			
			vo3.setAccount(account);
			vo3.setD_balance(d_balance);
			vo3.setD_loan_balance(1); // 원금 실행번호(이름 임시임 바꿔줘야함)
			int updateCnt = dao.payLoanPrincipal1(vo3);
			
			// Loans_history 생성 1-3
			Loans_historyVO vo4 = new Loans_historyVO();
			
			vo4.setD_Key(d_Key);
			if(redemption.equals("equality")) {
				vo4.setD_his_state("원금");
			} else if(redemption.equals("early")) {
				vo4.setD_his_state("중도상환");
			}
			vo4.setD_his_amount(d_tran);
			// DAO insert
		}
		
		// ========================================================================
		// 계좌이체(중도상환수수료) 2-1
		int d_ERC = Integer.parseInt(req.getParameter("d_ERC")); // 납입 할 중도상환수수료
		
		if (d_ERC != 0) {
			TransferVO vo2 = new TransferVO();
			
			vo2.setAccount(d_auto_account); // 출금 계좌
			vo2.setSender_account(req.getParameter("33-09-000001")); // KOS 본사 계좌 *하드코딩*
			
			vo2.setMoney(d_ERC);
			System.out.println("이체(할) 중도상환수수료 : " + vo2.getMoney());
			
			vo2.setSender_name("");
			vo2.setOut_comment(req.getParameter("중도상환수수료"));
			vo2.setIn_comment(req.getParameter("중도상환수수료"));
			
			int mylog2 = IDAO.addMyLog(vo2); // 내 계좌 이체내역
			int yourlog2 = IDAO.addYourLog(vo2); // 상대 계좌 입금내역
			IDAO.withdrawal(vo2); // 잔액 감소
			IDAO.deposit(vo2); // 상대 잔액 추가
			
			System.out.println("원금상환 mylog : " + mylog2);
			System.out.println("원금상환 yourlog : " + yourlog2);
			System.out.println("원금상환 vo : " + vo2);
			
			// ------------------------------------------------
			// Loans_history 생성 2-2
			Loans_historyVO vo4 = new Loans_historyVO();
			
			vo4.setD_Key(d_Key);
			vo4.setD_his_state("중도상환수수료");
			vo4.setD_his_amount(d_ERC);
			// DAO insert
		}
		
		

		
		
		model.addAttribute("vo",vo);
		model.addAttribute("mylog",mylog);
		model.addAttribute("yourlog",yourlog);
		
		
		

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
		String account = req.getParameter("selectAccount");
		
		LoansVO vo = dao.getLoanRateCheckIn(account);
		
		int d_tran_rate = 0;
		String d_repay = vo.getD_repay();
		
		double d_rate = vo.getD_rate();
		int d_amount = vo.getD_amount();
		int d_balance = vo.getD_balance();
		
		if(d_repay.equals("원금균등분할")) { // 전회차 원금잔액*(금리%12개월)
			d_tran_rate = (int) (d_balance*((d_rate*0.01)/12));
			
			vo.setD_tran_rate(d_tran_rate);
			
		} else if(d_repay.equals("만기일시")) { // 대출원금*(금리%12개월)
			d_tran_rate = (int) (d_amount*((d_rate*0.01)/12));
			
			vo.setD_tran_rate(d_tran_rate);
		}
		
		model.addAttribute("vo", vo);
	}
	
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

	
	// ============================================================================

}
