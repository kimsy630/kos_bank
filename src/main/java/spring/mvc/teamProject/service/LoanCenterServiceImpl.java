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

import spring.mvc.teamProject.persistence.AutoTransferDAO;
import spring.mvc.teamProject.persistence.InquiryTransferDAO;
import spring.mvc.teamProject.persistence.LoanCenterDAOImpl;
import spring.mvc.teamProject.persistence.RegisterReleaseDAO;
import spring.mvc.teamProject.vo.AccountVO;
import spring.mvc.teamProject.vo.AutoTransferVO;
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
	
	@Autowired
	AutoTransferDAO aDAO;
	
	// 박서하
	// 대출계좌 조회
	@Override
	public void LoanAccountCheck(HttpServletRequest req, Model model) {
		String id = (String)req.getSession().getAttribute("id");
		
		List<LoansVO> list = dao.getLoanAccountList(id);

		model.addAttribute("list", list);
	}

	// 박서하
	// 대출계좌 상세조회
	@Override
	public void LoanAccountDetail(HttpServletRequest req, Model model) { 
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("account", req.getParameter("account"));
		
		LoansVO vo = dao.getLoanAccountDetail(map);
		
		List<Loans_historyVO> list = dao.getLoanHistoryDetail(req.getParameter("account"));
		
		model.addAttribute("vo", vo);
		model.addAttribute("list", list);
	}

	// 박서하
	// 대출해지현황 조회
	@Override
	public void LoanCloseCheck(HttpServletRequest req, Model model) { 
		String id = (String)req.getSession().getAttribute("id");
		
		List<LoansVO> list = dao.getLoanCloseList(id);
		
		model.addAttribute("list", list);
	}

	// 박서하
	// 대출해지현황 상세조회
	@Override
	public void LoanCloseDetail(HttpServletRequest req, Model model) { 
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("account", req.getParameter("account"));
		
		LoansVO vo = dao.getLoanCloseDetail(map);

		List<Loans_historyVO> list = dao.getLoanHistoryDetail(req.getParameter("account"));
		
		model.addAttribute("vo", vo);
		model.addAttribute("list", list);
	}
	
	// 박서하
	// 대출원금 조회
	@Override
	public void LoanPrincipalCheck(HttpServletRequest req, Model model) {
		String id = (String)req.getSession().getAttribute("id");
		
		List<LoansVO> list = dao.getLoanAccountList(id);
		
		model.addAttribute("list", list);
	} 
	
	// 박서하
	// 대출원금 예상(내부정보)
	@Override
	public void LoanPrincipalCheckIn(HttpServletRequest req, Model model) { 
		String account = req.getParameter("selectAccount");
		LoansVO vo = dao.getLoanPrincipal(account);
		
		String redemption = req.getParameter("redemption");
		int d_balance = vo.getD_balance();
		int d_amount = vo.getD_amount();
		int d_month = vo.getD_month();
		int d_loan_rate = vo.getD_loan_rate();
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
			
			if(d_balance < 0) {
				model.addAttribute("check", 0);
				return;
			}
			
			vo.setD_balance(d_balance);
			vo.setD_tran(d_tran);
			vo.setD_ERC(0);
			
		} else if(redemption.equals("early")) { 
			
			if(d_loan_rate > d_month) { // 만기일시상환 (이자를 모두 납부했을 경우)
				
				d_tran = Integer.parseInt(req.getParameter("d_tran"));
				vo.setD_ERC(0);
				d_balance = d_balance - d_tran;
				
				vo.setD_balance(d_balance);
				vo.setD_ERC(d_ERC);
				vo.setD_tran(d_tran);
				
				if(d_balance < 0) {
					model.addAttribute("check", 0);
					return;
				}
				
			} else { // 중도상환
				
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
				d_ERC = (int) (d_tran * d_ERR * ((float)rest/(float)total)); // 대출상환금액*수수료율*(잔여일수 / 약정기간)
				System.out.println("중도해지수수료: " + d_ERC);
				
				d_balance = d_balance - d_tran;
				
				vo.setD_balance(d_balance);
				vo.setD_ERC(d_ERC);
				vo.setD_tran(d_tran);
				
				if(d_balance < 0) {
					model.addAttribute("check", 0);
					return;
				}
			}
		}
		
		model.addAttribute("redemption", redemption);
		model.addAttribute("vo", vo);
	}

	// 박서하
	// 대출원금 상환 실행
	@Override
	public void LoanPrincipalPay(HttpServletRequest req, Model model) {
		AccountVO vo0 = new AccountVO();
		
		// -------------------------------------------
		// 신규대출 신청 실행(입출금계좌 비밀번호 확인)]
		System.out.println(req.getParameter("pwWithdraw"));
		int pwWithdraw = Integer.parseInt(req.getParameter("pwWithdraw").toString());
		String d_auto_account = req.getParameter("d_auto_account");

		vo0.setAccount(d_auto_account);
		vo0.setAccountPW(pwWithdraw);
		int checkCnt = dao.checkPwd(vo0);
		if(checkCnt == 0) {
			model.addAttribute("updateCnt", 2);
			return;
		}
		
		String strId = (String)req.getSession().getAttribute("id");
		
		List<AccountVO> list= new ArrayList<AccountVO>();
		
		list = RDAO.selectById(strId);
		System.out.println("list : " + list);
		
		// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		// 계좌이체(원금 상환) 1-1
		d_auto_account = req.getParameter("d_auto_account"); // 출금 계좌
		int d_tran = Integer.parseInt(req.getParameter("d_tran")); // 상환 할 원금
		
		TransferVO vo = new TransferVO();
		
		vo.setAccount(d_auto_account); // 출금 계좌
		vo.setSender_account("33-09-000001"); // KOS 본사 계좌 *하드코딩*
		
		vo.setMoney(d_tran);
		System.out.println("이체(할) 원금 : " + vo.getMoney());
		
		vo.setSender_name("");
		vo.setOut_comment("원금상환");
		vo.setIn_comment("원금상환");
		
		int mylog = IDAO.addMyLog(vo); // 내 계좌 이체내역
		int yourlog = IDAO.addYourLog(vo); // 상대 계좌 입금내역
		IDAO.withdrawal(vo); // 잔액 감소
		IDAO.deposit(vo); // 상대 잔액 추가
		
		System.out.println("원금상환 mylog : " + mylog);
		System.out.println("원금상환 yourlog : " + yourlog);
		System.out.println("원금상환 vo : " + vo);
		
		// -------------------------------------------
		// Loans 변경 1-2
		int d_Key = Integer.parseInt(req.getParameter("d_Key"));
		String account = req.getParameter("account"); // 대출 계좌
		int d_balance = Integer.parseInt(req.getParameter("d_balance"));
		String redemption = req.getParameter("redemption"); // 원금상환인지 중도상환인지 여부
		int updateCnt = 0;
		int insertCnt = 0;
		
		if(mylog == 1 && yourlog == 1) {
			LoansVO vo3 = new LoansVO();
			
			vo3.setAccount(account);
			vo3.setD_balance(d_balance);
			vo3.setD_loan_balance(1); // 원금 실행번호
			updateCnt = dao.payLoanPrincipal1(vo3);
			
			vo3 = dao.checkLoanEnd(account);
			
			if (d_balance <= 100 ) { // 대출원금을 전액 상환했을 경우 (100원 단위 절삭)
				dao.d_amountPayAll(account);
			}

			System.out.println("되라account " + account);
			System.out.println("account " + vo3.getD_loan_balance() + vo3.getD_month());
			System.out.println("되라account " +  vo3.getD_loan_rate()  + vo3.getD_month());
			if(vo3.getD_loan_balance() > vo3.getD_month() && vo3.getD_loan_rate() > vo3.getD_month()) { // 대출원금과 이자를 모두 납부하였을 경우 대출 자동 해지
				dao.LoanEnd(vo3);
			}
			
			System.out.println("원금상환 성공 : " + updateCnt);
			
			// Loans_history 생성 1-3
			Loans_historyVO vo4 = new Loans_historyVO();
			
			vo4.setD_Key(d_Key);
			if(redemption.equals("equality")) {
				vo4.setD_his_state("원금");
			} else if(redemption.equals("early")) {
				vo4.setD_his_state("중도상환");
			}
			vo4.setD_his_amount(d_tran);
			insertCnt = dao.payLoanPrincipal2(vo4);
			System.out.println("대출상환(납입) 내역 성공 : " + insertCnt);
		}
		
		// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		// 계좌이체(중도상환수수료) 2-1
		int d_ERC = Integer.parseInt(req.getParameter("d_ERC")); // 납입 할 중도상환수수료
		System.out.println("d_ERC : " + d_ERC);
		if (d_ERC != 0) {
			TransferVO vo2 = new TransferVO();
			
			vo2.setAccount(d_auto_account); // 출금 계좌
			vo2.setSender_account("33-09-000001"); // KOS 본사 계좌 *하드코딩*
			
			vo2.setMoney(d_ERC);
			System.out.println("이체(할) 중도상환수수료 : " + vo2.getMoney());
			
			vo2.setSender_name("");
			vo2.setOut_comment("중도상환수수료");
			vo2.setIn_comment("중도상환수수료");
			
			int mylog2 = IDAO.addMyLog(vo2); // 내 계좌 이체내역
			int yourlog2 = IDAO.addYourLog(vo2); // 상대 계좌 입금내역
			IDAO.withdrawal(vo2); // 잔액 감소
			IDAO.deposit(vo2); // 상대 잔액 추가
			
			System.out.println("원금상환 mylog : " + mylog2);
			System.out.println("원금상환 yourlog : " + yourlog2);
			System.out.println("원금상환 vo : " + vo2);
			
			// -------------------------------------------
			// Loans_history 생성 2-2
			Loans_historyVO vo4 = new Loans_historyVO();
			
			vo4.setD_Key(d_Key);
			vo4.setD_his_state("중도상환수수료");
			vo4.setD_his_amount(d_ERC);
			insertCnt = dao.payLoanPrincipal2(vo4);
			System.out.println("대출상환(납입) 내역 성공 : " + insertCnt);
		}		
		
		model.addAttribute("vo",vo);
		model.addAttribute("mylog",mylog);
		model.addAttribute("yourlog",yourlog);
		model.addAttribute("updateCnt", updateCnt);
	}
	
	// 박서하
	// 대출이자 조회
	@Override
	public void LoanRateCheck(HttpServletRequest req, Model model) { 
		String id = (String)req.getSession().getAttribute("id");
		
		List<LoansVO> list = dao.getLoanAccountList(id);
		
		model.addAttribute("list", list);		
	}
	
	// 박서하
	// 대출이자 예상(내부정보)
	@Override
	public void LoanRateCheckIn(HttpServletRequest req, Model model) { 
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
	
	// 박서하
	// 대출이자 납입 실행
	@Override
	public void LoanRatePay(HttpServletRequest req, Model model) {
		AccountVO vo0 = new AccountVO();
		
		// -------------------------------------------
		// 신규대출 신청 실행(입출금계좌 비밀번호 확인)]
		System.out.println(req.getParameter("pwWithdraw"));
		int pwWithdraw = Integer.parseInt(req.getParameter("pwWithdraw").toString());
		String d_auto_account = req.getParameter("d_auto_account");

		vo0.setAccount(d_auto_account);
		vo0.setAccountPW(pwWithdraw);
		int insertCnt = dao.checkPwd(vo0);
		if(insertCnt == 0) {
			model.addAttribute("updateCnt", 2);
			return;
		}
		
		String strId = (String)req.getSession().getAttribute("id");
		
		List<AccountVO> list= new ArrayList<AccountVO>();
		
		list = RDAO.selectById(strId);
		System.out.println("list : " + list);
		
		// -------------------------------------------
		// 계좌이체(이자 납입) 1-1
		int d_tran_rate = Integer.parseInt(req.getParameter("d_tran_rate")); // 상환 할 원금
		
		TransferVO vo = new TransferVO();
		
		vo.setAccount(d_auto_account); // 출금 계좌
		vo.setSender_account("33-09-000001"); // KOS 본사 계좌 *하드코딩*
		
		vo.setMoney(d_tran_rate);
		System.out.println("이체(할) 이자 : " + vo.getMoney());
		
		vo.setSender_name("");
		vo.setOut_comment("이자납입");
		vo.setIn_comment("이자납입");
		
		int mylog = IDAO.addMyLog(vo); // 내 계좌 이체내역
		int yourlog = IDAO.addYourLog(vo); // 상대 계좌 입금내역
		IDAO.withdrawal(vo); // 잔액 감소
		IDAO.deposit(vo); // 상대 잔액 추가
		
		System.out.println("이자납입 mylog : " + mylog);
		System.out.println("이자납입 yourlog : " + yourlog);
		System.out.println("이자납입 vo : " + vo);
		
		// -------------------------------------------
		// Loans 변경 1-2
		int d_Key = Integer.parseInt(req.getParameter("d_Key"));
		String account = req.getParameter("account"); // 대출 계좌
		int updateCnt = 0;
		insertCnt = 0;
		
		if(mylog == 1 && yourlog == 1) {
			LoansVO vo3 = new LoansVO();
			
			vo3.setAccount(account);
			vo3.setD_loan_rate(1); // 이자 실행번호
			updateCnt = dao.payLoanRate1(vo3);
			System.out.println("이자납입 성공 : " + updateCnt);
			
			// Loans_history 생성 1-3
			Loans_historyVO vo4 = new Loans_historyVO();
			
			vo4.setD_Key(d_Key);
			vo4.setD_his_state("이자");
			vo4.setD_his_amount(d_tran_rate);
			insertCnt = dao.payLoanRate2(vo4);
			System.out.println("대출상환(납입) 내역 성공 : " + insertCnt);
		}
		
		model.addAttribute("vo",vo);
		model.addAttribute("mylog",mylog);
		model.addAttribute("yourlog",yourlog);
		model.addAttribute("updateCnt", updateCnt);
	}
	
	// 박서하
	// 신규대출 신청
	@Override
	public void LoanApplication(HttpServletRequest req, Model model) { 
		String id = (String)req.getSession().getAttribute("id");
		String d_name = req.getParameter("d_name");
		
		Loans_productVO vo = dao.getLoanApplication(d_name); // 신규대출 신청
		
		List<AccountVO> list = dao.getCheckingaccount(id); // 신규대출 신청(입출금 계좌)
		
		String name = dao.getName(id); // 신규대출 신청(이름)
		
		model.addAttribute("vo", vo);
		model.addAttribute("list", list);
		model.addAttribute("name", name);
	}

	// 박서하
   // 신규대출 신청 실행
   @Override
   public void LoanApplicationAction(HttpServletRequest req, Model model) {
	   AccountVO vo = new AccountVO();
	   
	   // -------------------------------------------
	   // 신규대출 신청 실행(입출금계좌 비밀번호 확인)
	   int pwWithdraw = Integer.parseInt(req.getParameter("pwWithdraw").toString());
	   String d_auto_account = req.getParameter("d_auto_account");
	   
	   vo.setAccount(d_auto_account);
	   vo.setAccountPW(pwWithdraw);
	   int insertCnt = dao.checkPwd(vo);
	   if(insertCnt == 0) {
		   model.addAttribute("insertCnt", insertCnt);
		   return;
	   }
	   
	   // -------------------------------------------
	   // 신규대출 신청 실행(계좌 생성)
	   
	   vo.setId((String)req.getSession().getAttribute("id"));
	   vo.setAccountPW(Integer.parseInt(req.getParameter("accountPW")));
	   vo.setBalance(0); // 처음에는 0원
	   vo.setAccountType(req.getParameter("accountType"));
	   vo.setAccountState("대기");
	   
	   insertCnt = dao.insertAccount(vo);
	   System.out.println("계좌 생성 : " + insertCnt);
	   
	   // -------------------------------------------
	   // 신규대출 신청 실행(대출 생성)
	   LoansVO vo2 = new LoansVO();
	   
	   vo2.setD_name(req.getParameter("d_name"));
	   vo2.setD_state(0); // 대출상태  : 0 == 신청 단계
	   vo2.setD_month(Integer.parseInt(req.getParameter("d_month")));
	   vo2.setD_repay(req.getParameter("d_repay"));
	   vo2.setD_rate(Double.parseDouble(req.getParameter("d_rate")));
	   vo2.setD_amount(Integer.parseInt(req.getParameter("d_amount")));
	   vo2.setD_balance(Integer.parseInt(req.getParameter("d_amount")));
	   vo2.setD_balance_rate(0);
	   vo2.setD_loan_balance(1); // 이체(할)원금실행번호 : 1 == 1차 상환예정
	   vo2.setD_loan_rate(1); // 이체(할)이자실행번호 : 1 == 1차 납부예정
	   vo2.setD_tran(0);
	   vo2.setD_tran_rate(0);
	   vo2.setD_next_rate(0);
	   vo2.setD_ERR(1.5);
	   vo2.setD_ERC(0);
	   vo2.setD_auto_account(req.getParameter("d_auto_account"));
	   vo2.setD_auto_date(Integer.parseInt(req.getParameter("d_auto_date")));
	   
	   int insertCnt2 = dao.insertLoan(vo2);
	   System.out.println("대출 생성 : " + insertCnt2);
	   
	   LoansVO vo3 = new LoansVO();
	   
	   // -------------------------------------------
	   // 신규대출 신청 실행(자동이체 신청-공통)
	   String account = dao.getLoanAccount();
	   int insertCnt3 = 0;
	   int insertCnt4 = 0;
	   
	   if(vo2.getD_auto_date() != 0) { // 자동이체일 0이면 미신청
		   vo3 = dao.getLoanInfo(account);
		   
		   if(vo3.getD_repay().equals("만기일시")) {
			   
			   // -------------------------------------------
			   // 만기일시 이자 계산 1-1
			   
			   double d_rate = vo3.getD_rate();
			   int d_amount = vo3.getD_amount();
			   String d_key = vo3.getD_Key();
			   
			   int d_tran_rate = (int) (d_amount*((d_rate*0.01)/12)); // 대출원금*(금리%12개월)
			   
			   // -------------------------------------------
			   // 만기일시 이자 지동이체 신청 1-2

			   java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yy/MM/dd"); // timestamp형 String으로 변환
			   
			   java.sql.Timestamp tD_end_date = vo3.getD_end_date();
			   String sD_end_date = sdf.format(tD_end_date);
			   System.out.println("string 만기일자" + sD_end_date);
			   
			   java.sql.Timestamp tD_start_date = vo3.getD_start_date();
			   String sD_start_date = sdf.format(tD_start_date);
			   System.out.println("string 만기일자" + sD_start_date);
			   
			   AutoTransferVO vo4 = new AutoTransferVO();
			   
			   vo4.setAccount(vo3.getD_auto_account());
			   vo4.setJd_autoMoney(d_tran_rate);
			   vo4.setJd_account("33-09-000001"); // KOS 본사 계좌 *하드코딩*
			   vo4.setJd_outCycle("1개월");
			   vo4.setJd_expirationDate(sD_end_date);
			   vo4.setJd_registDate(sD_start_date);
			   vo4.setJd_outDate(String.valueOf(vo3.getD_auto_date()));
			   vo4.setJd_inPlace("KOS뱅크(만기이자)");
			   vo4.setJd_type("대출"+d_key);
			   
			   insertCnt4 = aDAO.AutoTransferAdd2(vo4);
			   System.out.println("vo4 : "+vo4);
			   System.out.println("만기일시 이자 지동이체 신청 성공 : " + insertCnt4);
			   
			   // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		   } else if(vo3.getD_repay().equals("원금균등분할")) {
			   // 원금균등분할 원금 계산 2-1
			   
			   int d_month = vo3.getD_month();
			   int d_amount = vo3.getD_amount();
			   String d_key = vo3.getD_Key();
			   
			   int d_tran = d_amount / d_month;
            
			   // -------------------------------------------
			   // 원금균등분할 원금 지동이체 신청 2-2
            
			   java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yy/MM/dd"); // timestamp형 String으로 변환
              
			   java.sql.Timestamp tD_end_date = vo3.getD_end_date();
			   String sD_end_date = sdf.format(tD_end_date);
			   System.out.println("string 만기일자" + sD_end_date);
            
			   java.sql.Timestamp tD_start_date = vo3.getD_start_date();
			   String sD_start_date = sdf.format(tD_start_date);
			   System.out.println("string 만기일자" + sD_start_date);
            
			   AutoTransferVO vo4 = new AutoTransferVO();
            
			   vo4.setAccount(vo3.getD_auto_account());
			   vo4.setJd_autoMoney(d_tran);
			   vo4.setJd_account("33-09-000001"); // KOS 본사 계좌 *하드코딩*
			   vo4.setJd_outCycle("1개월");
			   vo4.setJd_expirationDate(sD_end_date);
			   vo4.setJd_registDate(sD_start_date);
			   vo4.setJd_outDate(String.valueOf(vo3.getD_auto_date()));
			   vo4.setJd_inPlace("KOS뱅크(원금원금)");
			   vo4.setJd_type("대출"+d_key);
            
			   insertCnt3 = aDAO.AutoTransferAdd2(vo4);
			   System.out.println("vo4 : "+vo4);
			   System.out.println("원금균등분할 원금 지동이체 신청 성공 : " + insertCnt3);
            
			   // -------------------------------------------
			   // 원금균등분할 이자 계산 2-3
         
			   double d_rate = vo3.getD_rate();
			   int d_balance = vo3.getD_balance();
            
			   int d_tran_rate = (int) (d_balance*((d_rate*0.01)/12)); // 전회차 원금잔액*(금리%12개월)
         
			   // -------------------------------------------
			   // 원금균등분할 이자 지동이체 신청 2-4
			   
			   vo4.setAccount(vo3.getD_auto_account());
			   vo4.setJd_autoMoney(d_tran_rate);
			   vo4.setJd_account("33-09-000001"); // KOS 본사 계좌 *하드코딩*
			   vo4.setJd_outCycle("1개월");
			   vo4.setJd_expirationDate(sD_end_date);
			   vo4.setJd_registDate(sD_start_date);
			   vo4.setJd_outDate(String.valueOf(vo3.getD_auto_date()));
			   vo4.setJd_inPlace("KOS뱅크(원금이자)");
			   vo4.setJd_type("대출"+d_key);
            
			   insertCnt4 = aDAO.AutoTransferAdd2(vo4);
			   System.out.println("vo4 : "+vo4);
			   System.out.println("원금균등분할 이자 지동이체 신청 성공 : " + insertCnt4);
		   }
	   }
      
	   // -------------------------------------------
	   // 계좌이체(본사 -> 대출계좌)
      
	   TransferVO vo5 = new TransferVO();
      
	   vo5.setAccount("33-09-000001"); // 출금 계좌(KOS 본사 계좌 *하드코딩*)
	   vo5.setSender_account(account); // 입금 계좌
      
	   vo5.setMoney(Integer.parseInt(req.getParameter("d_amount")));
	   System.out.println("이체(할) 원금 : " + vo5.getMoney());
      
	   vo5.setSender_name("");
	   vo5.setOut_comment("대출생성");
	   vo5.setIn_comment("대출생성");
      
	   int mylog = IDAO.addMyLog(vo5); // 내 계좌 이체내역
	   int yourlog = IDAO.addYourLog(vo5); // 상대 계좌 입금내역
	   IDAO.withdrawal(vo5); // 잔액 감소
	   IDAO.deposit(vo5); // 상대 잔액 추가
      
	   System.out.println("원금상환 mylog : " + mylog);
	   System.out.println("원금상환 yourlog : " + yourlog);
	   System.out.println("원금상환 vo5 : " + vo5);
      
	   model.addAttribute("vo", vo);
	   model.addAttribute("insertCnt", insertCnt);
	   model.addAttribute("insertCnt2", insertCnt2);
   	}
	
	// 박서하
	// 자동이체 실행
	@Override
	public void AutoTransferLoan() {
		
		// 날짜포멧 - 지정일 이체를 위해 오늘 일자만 리턴
		SimpleDateFormat format = new SimpleDateFormat("dd");
		Date date = new Date();
		
		// 자동이체용 당일 날짜 출력 (day값만)
		String day = format.format(date);
		System.out.println("testDate : "+day);
		
		// 자동이체 조건 쿼리
		int jd_key=0;
		String account="";
		String jd_account="";
		String jd_type="";
		int jd_autoMoney=0;
		String jd_inPlace = "";
		String jd_status = "";
		System.out.println(Integer.toString(Integer.parseInt(day)));
		int num = Integer.parseInt(day);
		day= Integer.toString(num);
		List<AutoTransferVO> transferInfo = aDAO.loansSelectByDate(day);
		
		System.out.println("자동이체 할 객체 Chk : "+ transferInfo);
		
		double d_rate = 0;
		int d_tran_rate = 0;
		int d_balance = 0;	
		String d_Key = "";
		
		// 자동이체 실행
		if(transferInfo != null) {
			int i = 0;
			while(i < transferInfo.size()) {
				AutoTransferVO vo = new AutoTransferVO();
				
				// UPDATE 실행
				jd_key = transferInfo.get(i).getJd_key();
				account = transferInfo.get(i).getAccount();
				jd_account = transferInfo.get(i).getJd_account();
				jd_type = transferInfo.get(i).getJd_type();
				jd_autoMoney = transferInfo.get(i).getJd_autoMoney();
				jd_inPlace = transferInfo.get(i).getJd_inPlace();
				jd_status = transferInfo.get(i).getJd_status();
				
				vo.setJd_key(jd_key);
				vo.setAccount(account);
				vo.setJd_account(jd_account);
				vo.setJd_type(jd_type);
				vo.setJd_autoMoney(jd_autoMoney);
				vo.setJd_inPlace(jd_inPlace);
				vo.setJd_status(jd_status);

				System.out.println("vo1 : "+ vo);
				
				// Loans UPDATE 실행
				d_Key = jd_type.substring(2);
				LoansVO vo2 = dao.getAutoLoan(d_Key); // 대출계좌
				
				if(vo2.getD_state()!=1) {
					i++;
					continue;
				} else if(vo2.getD_repay().equals("만기일시")) {
					if(vo2.getD_loan_rate() > vo2.getD_month()) {
						i++;
						continue;
					}
				} else if(vo2.getD_repay().equals("원금균등분할")) {
					if(vo2.getD_loan_balance() > vo2.getD_month() && vo2.getD_loan_rate() > vo2.getD_month()) {
						i++;
						continue;
					}
				}
				
				// 대출상태가 정상이면서 원금 혹은 이자를 다 납부하지 않은 대출만 자동이체 실행	
				d_rate = vo2.getD_rate();
				d_balance = vo2.getD_balance();
				
				// Loans_historyVO UPDATE 실행
				Loans_historyVO vo3 = new Loans_historyVO();
								
				if(jd_inPlace.equals("KOS뱅크(원금이자)")) { // 원금균등분할 이자 계산
					d_tran_rate = (int) (d_balance*((d_rate*0.01)/12)); // 전회차 원금잔액*(금리%12개월)
					
					vo.setJd_autoMoney(d_tran_rate);
					
					vo2.setD_loan_rate(1);
					
					vo3.setD_Key(Integer.parseInt(d_Key));
					vo3.setD_his_state("이자");
					vo3.setD_his_amount(d_tran_rate);
				} else if(jd_inPlace.equals("KOS뱅크(원금원금)")) {
					d_balance = d_balance - jd_autoMoney;
					
					vo2.setD_balance(d_balance);
					vo2.setD_loan_balance(1); // 원금 실행번호
					
					vo3.setD_Key(Integer.parseInt(d_Key));
					vo3.setD_his_state("원금");
					vo3.setD_his_amount(jd_autoMoney);
				} else if(jd_inPlace.equals("KOS뱅크(만기이자)")) { 
					vo2.setD_loan_rate(1);
					
					vo3.setD_Key(Integer.parseInt(d_Key));
					vo3.setD_his_state("이자");
					vo3.setD_his_amount(jd_autoMoney);
				}
								
				// 출금 UPDATE
				aDAO.AutoWithdrawal(vo);
				
				// 입금 UPDATE
				aDAO.AutoDeposit(vo);
				
				// 최근거래내역 UPDATE
				aDAO.lastRunDate(vo);
				
				// 계좌이체 테이블 로그(출금)
				aDAO.TransferMyLog(vo);
				
				// 계좌이체 테이블 로그(입금)
				aDAO.TransferYourLog(vo);            
				
				// 자동이체내역 로그(출금)
				aDAO.sendAutoTrans(vo);
				
				// 자동이체내역 로그(입금)
				aDAO.receiveAutoTrans(vo);
				
				if(jd_inPlace.equals("KOS뱅크(원금원금)")) {
					// Loans 변경
					dao.payLoanPrincipal1(vo2);
					
					// Loans_history 생성
					dao.payLoanPrincipal2(vo3);
					
					vo2 = dao.getAutoLoan(d_Key); // 계산식 reset
					
					if(vo2.getD_loan_balance() > vo2.getD_month() && vo2.getD_loan_rate() > vo2.getD_month()) { // 대출원금과 이자를 모두 납부하였을 경우 대출 자동 해지
						
						dao.LoanEnd(vo2);
					}
				} else if(jd_inPlace.equals("KOS뱅크(원금이자)")) {
					// Loans 변경
					dao.payLoanRate1(vo2);
					// Loans_history 생성
					dao.payLoanRate2(vo3);
					
					vo2 = dao.getAutoLoan(d_Key); // 계산식 reset
					
					if(vo2.getD_loan_balance() > vo2.getD_month() && vo2.getD_loan_rate() > vo2.getD_month()) { // 대출원금과 이자를 모두 납부하였을 경우 대출 자동 해지
						
						dao.LoanEnd(vo2);
					}
				} else if(jd_inPlace.equals("KOS뱅크(만기이자)")) {
					// Loans 변경
					dao.payLoanRate1(vo2);
					// Loans_history 생성
					dao.payLoanRate2(vo3);
				}
				
				i++;					
			}
		}
	}

}
