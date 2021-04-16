package spring.mvc.teamProject.service;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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

import oracle.sql.DATE;
import spring.mvc.teamProject.persistence.AutoTransferDAO;
import spring.mvc.teamProject.persistence.FinancialProductsDAO;
import spring.mvc.teamProject.persistence.FinancialProductsDAOImpl;
import spring.mvc.teamProject.persistence.InquiryTransferDAO;
import spring.mvc.teamProject.persistence.MembersDAOImpl;
import spring.mvc.teamProject.vo.AccountTransferVO;
import spring.mvc.teamProject.vo.AccountVO;
import spring.mvc.teamProject.vo.AutoTransferVO;
import spring.mvc.teamProject.vo.Deposit_productVO;
import spring.mvc.teamProject.vo.Fixed_depositVO;
import spring.mvc.teamProject.vo.Loans_productVO;
import spring.mvc.teamProject.vo.MembersVO;
import spring.mvc.teamProject.vo.TransferVO;
import spring.mvc.teamProject.vo.installment_savingsVO;
import spring.mvc.teamProject.vo.savings_productVO;



@Service
public class FinancialProductsServiceImpl implements FinancialProductsService{
   
   @Autowired
   FinancialProductsDAO dao;
   
   @Autowired
   InquiryTransferDAO IDAO;   // 계좌이체용
   
   @Autowired
   AutoTransferDAO aDAO;       // 자동이체용
   
   @Autowired
   InquiryTransferService Iservice;
   
   // ============================================================================
   // 박서하
   // 대출상품 조회
   @Override
   public void loanProductsList(HttpServletRequest req, Model model) { 
      int count = dao.getLoanCount();
      
      List<Loans_productVO> list = dao.getLoanList();
      
      model.addAttribute("count", count);
      model.addAttribute("list", list);      
   }

   // 박서하
   // 대출상품 상세조회
   @Override
   public void loanProductDetail(HttpServletRequest req, Model model) { 
      String d_name = req.getParameter("d_name");
      
      Loans_productVO vo = dao.getLoanDetail(d_name);
      
      model.addAttribute("vo", vo);      
   }
   // ============================================================================
   
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
      
      List<Deposit_productVO> list = dao.getDepositList();
      
      model.addAttribute("list", list);   
   }

   @Override
   public void SavingsDetail(HttpServletRequest req, Model model) {
      
      String j_name = req.getParameter("j_name");
      
      savings_productVO vo = dao.getSavingsDetail(j_name);
      
      model.addAttribute("vo", vo);
   }

   @Override
   public void DepositDetail(HttpServletRequest req, Model model) {
      
      String y_name = req.getParameter("y_name");
      
      Deposit_productVO vo = dao.getDepositDetail(y_name);
      
      model.addAttribute("vo", vo);
      
   }
   // 적금개설
   @Override
   public void SavingsAction(HttpServletRequest req, Model model) {
      
      installment_savingsVO vo = new installment_savingsVO();
      AccountVO vo2 = new AccountVO();
      int insertCnt = 3;
      
      String ID = req.getParameter("ID").toString();                           // 아이디
      String j_name = req.getParameter("j_name").toString();                     // 적금상품이름
      double j_rate = Double.parseDouble(req.getParameter("j_rate").toString());     // 이자율
      String j_type = req.getParameter("j_type").toString();                     // 복리/단리
      int accountPW = Integer.parseInt(req.getParameter("pw").toString());         // 가입계좌 비밀번호
      int months = Integer.parseInt(req.getParameter("months").toString());         // 계약월수
      String sender_account = dao.getSavingsAccount();                        // 개설할 계좌번호
      String j_method = req.getParameter("j_method");                           // 자유적립식/정액적립식
      sender_account = dao.getSavingsAccount();                              // 적금용 계좌번호
      
      if(j_method.toString().equals("자유적립")) {         // 자유적립식일 경우
         vo2.setId(ID);                  
         vo2.setAccount(sender_account);
         vo2.setAccountPW(accountPW);
         insertCnt = dao.insertSavingsAccount(vo2);            // 1.적금계좌개설
         
         Date date = new Date();
         long time = date.getTime();
         Timestamp ts = new Timestamp(time);
         Calendar cal = Calendar.getInstance();
         cal.setTime(ts);
         cal.add(Calendar.MONTH, months);
         ts.setTime(cal.getTime().getTime());
         
         vo.setJ_name(j_name);
         vo.setAccount(sender_account);
         vo.setJ_rate(j_rate);
         vo.setJ_type(j_type);
         vo.setJ_end_date(ts);
         vo.setJ_balance(0);
         System.out.println("awfaewfa"+ts);
         vo.setJ_method(j_method);
         vo.setJ_month(months);
         
         insertCnt = dao.insertFreeSavings(vo);                // 2.적금테이블에 삽입
         
         model.addAttribute("j_name", j_name);
         model.addAttribute("insertCnt", insertCnt);
         return;
      }else {                  // 정액적립식일 경우
         
         int j_money = Integer.parseInt(req.getParameter("j_money").toString());          // 적금금액(정액적립식)
         String account = req.getParameter("accounts").toString();                  // 자동이체용 계좌번호(정액적립식)
         int pwWithdraw = Integer.parseInt(req.getParameter("pwWithdraw").toString());    // 자동이체용 계좌비밀번호(정액적립식)
         int jd_outDate = Integer.parseInt(req.getParameter("jd_outDate").toString());   // 자동이체날(정액적립식)
         
         vo2.setAccount(account);                        // 자동이체용 계좌번호
         vo2.setAccountPW(pwWithdraw);                     // 자동이체용 계좌비밀번호
         vo2.setBalance(j_money);                        // 자동이체용 계좌에 설정한 적금금액만큼 잔금이 있는지 조회용
         
         insertCnt = dao.checkPwd(vo2);                     // 1.자동이체용 계좌 비밀번호 일치 여부확인
         
         if(insertCnt == 0) {   // 불일치시
            model.addAttribute("insertCnt", insertCnt);
            model.addAttribute("j_name", j_name);
            return;
         }
         
         insertCnt = dao.checkBalance(vo2);                  // 2.자동이체용 계좌 이체할 금액이 있나 잔고확인
         
         if(insertCnt == 0) {   // 잔고부족시
            insertCnt = 2;      
            model.addAttribute("insertCnt", insertCnt);
            model.addAttribute("j_name", j_name);
            return;
         }
            
         vo2.setAccount(sender_account);
         vo2.setId(ID);                  
         vo2.setAccountPW(accountPW);
         insertCnt = dao.insertSavingsAccount(vo2);            // 4.적금용 계좌개설
         
         String name = dao.getName(ID);                     // 5.계좌이체용 이름을 얻어온다.
         
         TransferVO vo3 = new TransferVO();
         vo3.setAccount(account);
         vo3.setSender_account(sender_account);
         vo3.setMoney(j_money);
         vo3.setSender_name(name);
         vo3.setOut_comment("적금이체");
         vo3.setIn_comment("적금이체");
         
         IDAO.addMyLog(vo3);                              // 6.내 자유입출금 계좌 이체내역
                                                      
         IDAO.addYourLog(vo3);                           // 7.적금 계좌 이체내역
                                                   
         IDAO.withdrawal(vo3);                           // 8.내 자동이체 계좌에서 최초예치금 이체
         
         IDAO.deposit(vo3);                              // 9.적금 계좌에서 잔액 추가
         
         Date date = new Date();
         long time = date.getTime();
         Timestamp ts = new Timestamp(time);
         Calendar cal = Calendar.getInstance();
         cal.setTime(ts);
         cal.add(Calendar.MONTH, months);
         ts.setTime(cal.getTime().getTime());
         
         vo.setJ_name(j_name);
         vo.setAccount(sender_account);
         vo.setJ_rate(j_rate);
         vo.setJ_type(j_type);
         vo.setJ_money(j_money);
         vo.setJ_method(j_method);
         vo.setJ_end_date(ts);
         vo.setJ_auto_date(jd_outDate);
         vo.setJ_month(months);
         vo.setJ_balance(j_money);
         
         insertCnt = dao.insertFixedSavings(vo);                     // 10.적금테이블에 가입정보삽입
         
         AutoTransferVO vo4 = new AutoTransferVO();
         vo4.setAccount(account);                              // 출금계좌번호
         vo4.setJd_account(sender_account);                        // 적금계좌번호
         vo4.setJd_type("적금");                                 // 적금구분
         vo4.setJd_outDate(req.getParameter("jd_outDate"));            // 출금일자
         
         System.out.println(req.getParameter("jd_outDate"));
         vo4.setJd_autoMoney(j_money);                            // 자동이체금액
         
         insertCnt = dao.AutoTransferAdd(vo4);                     // 11.자동이체테이블에 삽입
         
         model.addAttribute("insertCnt", insertCnt);
         model.addAttribute("j_name", j_name);
         return;
      }
   }
   // 정기예금개설
   @Override
   public void DepositAction(HttpServletRequest req, Model model) {
      
      Fixed_depositVO vo = new Fixed_depositVO();
      AccountVO vo2 = new AccountVO();
      int insertCnt = 3;
      
      String ID = req.getParameter("ID").toString();                          // 아이디  
      String y_name = req.getParameter("y_name").toString();                      // 예금상품이름
      double y_rate = Double.parseDouble(req.getParameter("y_rate").toString());     // 이자율
      int y_balance = Integer.parseInt(req.getParameter("y_balance").toString());    // 최초예치금액
      String y_type = req.getParameter("y_type").toString();                     // 복리/단리
      int accountPW = Integer.parseInt(req.getParameter("pw").toString());         // 가입계좌 비밀번호
      int months = Integer.parseInt(req.getParameter("months").toString());         // 계약월수
      int pwWithdraw = Integer.parseInt(req.getParameter("pwWithdraw").toString());   // 이체용 계좌비밀번호
      String sender_account = req.getParameter("accounts").toString();            // 이체용 계좌번호
      String account = dao.getDepositAccount();                              // 사용할 정기예금 계좌번호
      
      vo2.setAccount(sender_account);            // 이체용 계좌번호 설정
      vo2.setAccountPW(pwWithdraw);            // 이체용 계좌비밀번호 설정
      vo2.setBalance(y_balance);               // 이체용 계좌 조회용 최초예치금액 설정 
      
      insertCnt = dao.checkPwd(vo2);                     // 1. 출금용 계좌 비밀번호 일치 여부확인
      
      if(insertCnt == 0) {   // 불일치시
         model.addAttribute("insertCnt", insertCnt);
         return;
      }
      
      insertCnt = dao.checkBalance(vo2);                  // 2. 출금용 계좌에서 이체할 금액이 있나 잔고확인
      
      if(insertCnt == 0) {   // 잔고부족시
         insertCnt = 2;
         model.addAttribute("insertCnt", insertCnt);
         model.addAttribute("y_name", y_name);
         return;
      }
      
      vo2.setAccount(account);
      vo2.setId(ID);                  
      vo2.setAccountPW(accountPW);
      insertCnt = dao.insertDepositAccount(vo2);           // 4. 예금계좌개설
      
      
      String name = dao.getName(ID);                     // 5. 계좌이체용  고객이름을 얻어온다.
      
      TransferVO vo3 = new TransferVO();
      vo3.setAccount(sender_account);
      vo3.setSender_account(account);
      vo3.setMoney(y_balance);
      vo3.setSender_name(name);
      vo3.setOut_comment("정기예금이체");
      vo3.setIn_comment("정기예금이체");
      
      IDAO.addMyLog(vo3);                              // 6. 내 자유입출금 계좌 이체내역
                                                   
      IDAO.addYourLog(vo3);                           // 7. 예금 계좌 이체내역
                                                
      insertCnt = IDAO.withdrawal(vo3);                  // 8. 자유입출금 감소
      
      insertCnt = IDAO.deposit(vo3);                     // 9. 예금 증가
      
      Date date = new Date();
      long time = date.getTime();
      Timestamp ts = new Timestamp(time);
      Calendar cal = Calendar.getInstance();
      cal.setTime(ts);
      cal.add(Calendar.MONTH, months);
      
      ts.setTime(cal.getTime().getTime());
      java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yy/MM/dd");
      String test = sdf.format(ts);
      Date parsedDate = new Date();
      SimpleDateFormat dateFormat = new SimpleDateFormat("yy/MM/dd");
      try {
         parsedDate = dateFormat.parse(test);
      } catch (ParseException e) {
         e.printStackTrace();
      }
       Timestamp timestamp = new java.sql.Timestamp(parsedDate.getTime());
      
      vo.setY_name(y_name);
      vo.setAccount(account);
      vo.setY_rate(y_rate);
      vo.setY_type(y_type);
      vo.setY_balance(y_balance);
      vo.setY_end_date(timestamp);
      vo.setY_month(months);
      
      insertCnt = dao.insertDeposit(vo);               // 10. 예금테이블에 삽입
      
      model.addAttribute("insertCnt", insertCnt);
      
      return;
   }
   
   // 스케쥴러 만기체크
   @Override
   public void checkEnd() throws Exception {
      
      List<Fixed_depositVO> list = dao.selectDepositEnd();            
      List<installment_savingsVO> list2 = dao.selectSavingsEnd();         
      System.out.println(1);
      if(list != null) {
         System.out.println(2);
         for(Fixed_depositVO vo2 : list) {
            System.out.println(3);
            if(vo2.getY_type().equals("단리")) {                        
               System.out.println(4);
               String account = vo2.getAccount();                     
               double rate = vo2.getY_rate()*0.01;                     
               int balance = vo2.getY_balance();                     
               int month = vo2.getY_month();                        
               int interest = (int)(balance*(1+rate*month/12)) - balance;   
               
               dao.endDeposit(vo2);                           
               System.out.println(interest);
               TransferVO vo3 = new TransferVO();
               vo3.setAccount("33-09-000001");
               vo3.setSender_account(account);
               System.out.println(account);
               vo3.setMoney(interest);
               vo3.setSender_name("KOS뱅크");
               vo3.setOut_comment("만기이자지급");
               vo3.setIn_comment("만기이자지급");
               
               IDAO.addMyLog(vo3);                              
                                                            
               IDAO.addYourLog(vo3);                           
                                                         
               IDAO.deposit(vo3);                              
               
            }else if(vo2.getY_type().equals("복리")) {
               String account = vo2.getAccount();
               double rate = vo2.getY_rate()*0.01;
               int balance = vo2.getY_balance();
               int month = vo2.getY_month();
               int interest = (int)((balance*Math.pow((1+rate/12), (month*12/12)))) - balance;   
               
               dao.endDeposit(vo2);                        
               
               TransferVO vo3 = new TransferVO();
               vo3.setAccount("33-09-000001");
               vo3.setSender_account(account);
               vo3.setMoney(interest);
               vo3.setSender_name("KOS뱅크");
               vo3.setOut_comment("만기이자지급");
               vo3.setIn_comment("만기이자지급");
               
               IDAO.addMyLog(vo3);                           
                                                            
               IDAO.addYourLog(vo3);                        
                                                         
               IDAO.deposit(vo3);      
               
               }
            }
         }
      
      if(list2 != null) {
         for(installment_savingsVO vo2 : list2) {
            if(vo2.getJ_method().equals("자유적립")) {                  
               String account = vo2.getAccount();                  
               double rate = vo2.getJ_rate()*0.01;                  
               int interest = 0;                              
               int i= 0;
               Date d1 = new Date(vo2.getJ_end_date().getTime());                     
               List<AccountTransferVO> transVO = dao.selectFreeLog(account);   
               
               while(i < transVO.size()) {
                  int money = transVO.get(i).getMoney();            
                  Date d2 = new Date(transVO.get(i).getIn_outDate().getTime());
                  long diff = d1.getTime() - d2.getTime();
                  System.out.println("diff"+diff);
                  int day = (int)(diff / (1000 * 60 * 60 * 24));      
                  interest += (int)(money * rate / 365 * day);      
                  System.out.println("interest"+interest);
                  i++;
               }
               
               dao.endSavings(vo2);                                 
               
               TransferVO vo3 = new TransferVO();
               vo3.setAccount("33-09-000001");
               vo3.setSender_account(account);
               vo3.setMoney(interest);
               vo3.setSender_name("KOS뱅크");
               vo3.setOut_comment("만기이자지급");
               vo3.setIn_comment("만기이자지급");
               
               IDAO.addMyLog(vo3);                           
                                                            
               IDAO.addYourLog(vo3);                        
                           
               IDAO.deposit(vo3);   
               
            }else if(vo2.getJ_type().equals("정액적립")) {
               String account = vo2.getAccount();            
               double rate = vo2.getJ_rate()*0.01;            
               int money = vo2.getJ_money();               
               int month = vo2.getJ_month();               
               int interest = (int)(money * month * (month+1)/2 * rate/12);   
               
               dao.endSavings(vo2);
               
               TransferVO vo3 = new TransferVO();
               vo3.setAccount("33-09-000001");
               vo3.setSender_account(account);
               vo3.setMoney(interest);
               vo3.setSender_name("KOS뱅크");
               vo3.setOut_comment("만기이자지급");
               vo3.setIn_comment("만기이자지급");
               
               IDAO.addMyLog(vo3);            
               
               IDAO.addYourLog(vo3);      
               
               IDAO.deposit(vo3);                              
               
               }
            }
         }
         return;
      }

   @Override
   public void autoTransfer() {
      
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
      int jd_autoMoney=0;
      String jd_inPlace = "";
      String jd_status = "";
      int num = Integer.parseInt(day);
       day= Integer.toString(num);
       
      List<AutoTransferVO> transferInfo = dao.selectByDate(day);
      
      System.out.println("자동이체 할 객체 Chk : "+ transferInfo);
      
      // 자동이체 실행
      if(transferInfo != null) {
         int i = 0;
         while(i < transferInfo.size()) {
            AutoTransferVO vo = new AutoTransferVO();
            installment_savingsVO vo2 = new installment_savingsVO();
            
            // UPDATE 실행
            jd_key = transferInfo.get(i).getJd_key();
            account = transferInfo.get(i).getAccount();
            jd_account = transferInfo.get(i).getJd_account();
            jd_autoMoney = transferInfo.get(i).getJd_autoMoney();
            jd_inPlace = transferInfo.get(i).getJd_inPlace();
            jd_status = transferInfo.get(i).getJd_status();
            
            vo.setJd_key(jd_key);
            vo.setAccount(account);
            vo.setJd_account(jd_account);
            vo.setJd_autoMoney(jd_autoMoney);
            vo.setJd_inPlace(jd_inPlace);
            vo.setJd_status(jd_status);
            
            vo2.setAccount(jd_account);
            vo2.setJ_money(jd_autoMoney);
            
            // 적금테이블 총 납입금액 UPDATE
            dao.addBalance(vo2);
            
            // 출금 UPDATE
            aDAO.AutoWithdrawal(vo);
            
            // 입금 UPDATE
            aDAO.AutoDeposit(vo);
            
            // 최근거래내역 UPDATE
            aDAO.lastRunDate(vo);
            
            // 거래내역 로그(출금)
            aDAO.sendAutoTrans(vo);
            
            // 거래내역 로그(입금)
            aDAO.receiveAutoTrans(vo);
            
            i++;
         }
      }
   }

   
}