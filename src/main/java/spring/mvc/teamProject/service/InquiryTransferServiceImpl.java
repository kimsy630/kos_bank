package spring.mvc.teamProject.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.teamProject.persistence.InquiryTransferDAOImpl;
import spring.mvc.teamProject.persistence.InquiryTransferDAO;
import spring.mvc.teamProject.persistence.RegisterReleaseDAO;
import spring.mvc.teamProject.vo.AccountTransferVO;
import spring.mvc.teamProject.vo.AccountVO;
import spring.mvc.teamProject.vo.Fixed_depositVO;
import spring.mvc.teamProject.vo.LoansVO;
import spring.mvc.teamProject.vo.TransferVO;
import spring.mvc.teamProject.vo.fundVO;
import spring.mvc.teamProject.vo.installment_savingsVO;


@Service
public class InquiryTransferServiceImpl implements InquiryTransferService{
	
	@Autowired
	InquiryTransferDAO IDAO;
	
	@Autowired
	RegisterReleaseDAO RDAO;
	
	@Override
	public void transferTable(HttpServletRequest req, Model model) {
		TransferVO vo = new TransferVO();
		vo.setAccount(req.getParameter("account"));
		vo.setSender_account(req.getParameter("sender_account"));
		vo.setMoney(Integer.parseInt(req.getParameter("money")));
		vo.setSender_name(req.getParameter("sender_name"));
		vo.setOut_comment(req.getParameter("out_comment"));
		vo.setIn_comment(req.getParameter("in_comment"));
		System.out.println("vo : "+vo);
		
		model.addAttribute("vo",vo);
	}
	// 김소림
	// 계좌이체 실행
	@Override
	public void transferAction(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("id");
		List<AccountVO> list= new ArrayList();
		list = RDAO.selectById(strId);
		System.out.println("list : "+list);
		
		TransferVO vo = new TransferVO();
		vo.setAccount(req.getParameter("account"));
		vo.setSender_account(req.getParameter("sender_account"));
		System.out.println("money : "+req.getParameter("money"));
		vo.setMoney(Integer.parseInt(req.getParameter("money")));
		vo.setSender_name(req.getParameter("sender_name"));
		System.out.println("sender_name : "+req.getParameter("sender_name"));
		vo.setOut_comment(req.getParameter("out_comment"));
		vo.setIn_comment(req.getParameter("in_comment"));
		
		// 내 계좌 이체내역
		int mylog = IDAO.addMyLog(vo);
		// 상대 계좌 입금내역
		int yourlog = IDAO.addYourLog(vo);
		// 잔액 감소
		IDAO.withdrawal(vo);
		// 상대 잔액 추가
		IDAO.deposit(vo);
		
		System.out.println("mylog : "+mylog);
		System.out.println("yourlog : "+yourlog);
		System.out.println("vo2"+vo);
		model.addAttribute("vo",vo);
		model.addAttribute("mylog",mylog);
		model.addAttribute("yourlog",yourlog);
		
	}

	@Autowired
	InquiryTransferDAOImpl InquiryTransferDAO;
	
	//입출금 계좌조회 (정하늘)
	@Override  
	public void AccountTable(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("id");
		
		List<AccountTransferVO> list = InquiryTransferDAO.AccountTable(strId);
		System.out.println(list);
		model.addAttribute("list", list);
	}
	//대출 조회 (정하늘)
	@Override
	public void LoansTable(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("id");
		
		List<LoansVO> list = InquiryTransferDAO.LoansTable(strId);
		System.out.println(list.size());
		
		model.addAttribute("list", list);
	}
	//적금조회 (정하늘)
	@Override
	public void IS_Table(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("id");
		
		List<installment_savingsVO> list = InquiryTransferDAO.IS_Table(strId);
		System.out.println("list => " + list);
		
		model.addAttribute("list", list);
	}
	//펀드조회(정하늘)
	@Override
	public void fund_Table(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("id");
		
		List<fundVO> list = InquiryTransferDAO.fund_Table(strId);
		System.out.println("list => " + list);
		
		model.addAttribute("list", list);
		
	}
	//예금조회 (정하늘)
	@Override
	public void DepositTable(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("id");
		
		List<Fixed_depositVO> list = InquiryTransferDAO.DepositTable(strId);
		System.out.println("list => " + list);
		
		model.addAttribute("list", list);
		
	}
	//정지/휴면조회  (정하늘)
	@Override 
	public void StopSleepTable(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("id");
		
		List<AccountTransferVO> list = InquiryTransferDAO.StopSleepTable(strId);
		System.out.println("list => " + list);
		
		model.addAttribute("list", list);
	}
	//전체조회
	@Override
	public void AllTable(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("id");
		
		List<AccountTransferVO> list1 = InquiryTransferDAO.AccountTable(strId); //입출금조회
		List<LoansVO> list2 = InquiryTransferDAO.LoansTable(strId);///대출조회
		List<installment_savingsVO> list3 = InquiryTransferDAO.IS_Table(strId);	//적금조회
		List<fundVO> list4 = InquiryTransferDAO.fund_Table(strId);//펀드조회
		List<Fixed_depositVO> list5 = InquiryTransferDAO.DepositTable(strId);//예금조회
		List<AccountTransferVO> list6 = InquiryTransferDAO.StopSleepTable(strId);//정지/휴면
		
		model.addAttribute("list1", list1);
		model.addAttribute("list2", list2);
		model.addAttribute("list3", list3);
		model.addAttribute("list4", list4);
		model.addAttribute("list5", list5);
		model.addAttribute("list6", list6);
		
	}
	//이체내역 조회
	@Override
	public void TransactionDetails(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("id");
		
		List<AccountVO> accList = InquiryTransferDAO.TransactionDetails(strId);
		
		model.addAttribute("accList", accList);
	}
	//이체내역 조회 - ALL
	@Override
	public void TransactionDetails_Table(HttpServletRequest req, Model model) {
		String view_AccountNum = req.getParameter("view_AccountNum");
		String start_date = req.getParameter("start_date");
		String end_date = req.getParameter("end_date");
		
		
		// 3단계. 화면으로 입력받은 값을 받아온다.
	      // 페이징
	      int pageSize = 10;      // 한 페이지당 출력할 글 갯수
	      int pageBlock = 3;      // 한 블럭당 페이지 갯수
	      
	      int cnt = 0;         // 글갯수
	      int start = 0;         // 현재 페이지 시작 글번호
	      int end = 0;         // 현재 페이지 마지막 글번호
	      int number = 0;         // 출력용 글번호
	      String pageNum = "";    // 페이지 번호
	      int currentPage = 0;   // 현재 페이지
	      
	      int pageCount = 0;      // 페이지 갯수
	      int startPage = 0;      // 시작페이지
	      int endPage = 0;      // 마지막 페이지
	      
	      Map<String,Object> map2 = new HashMap<String,Object>();
	      map2.put("start_date", start_date);
	      map2.put("end_date", end_date);
	      map2.put("view_AccountNum", view_AccountNum);
	      
	      cnt = InquiryTransferDAO.get_transferCnt(map2);
	      System.out.println("cnt => " + cnt);
	      
	      
	      pageNum = req.getParameter("pageNum");
	      
	      if(pageNum == null) {
	         pageNum = "1";   // 첫페이지를 1페이지로 지정
	      }
	      // 글 30건 기준
	      currentPage = Integer.parseInt(pageNum);   // 현재페이지 : 1
	      System.out.println("currentPage : " + currentPage);
	      
	      // 페이지 갯수 6 = (30 / 5) + (0)
	      pageCount = (cnt / pageSize) + (cnt % pageSize > 0 ? 1 : 0);  // 페이지갯수 + 나머지 있으면 1페이지 
	      
	      // 현재페이지 시작 글번호(페이지별)
	      // 1 = (1 - 1) * 5 + 1
	      start = (currentPage - 1) * pageSize + 1;
	      
	      // 현재페이지 마지막 글번호(페이지별)
	      // 5 = 1  + 5 - 1;
	      end = start + pageSize - 1;
	      
	      System.out.println("start : " + start);
	      System.out.println("end : " + end);
	      
	      // 출력용 글번호 / 최종 페이지 => 30번 / 1페이지 
	      // 30 = 30 - (1 - 1) * 5;
	      number = cnt - (currentPage - 1) * pageSize;
	      System.out.println("number : " + number);
	      System.out.println("pageSize : " + pageSize);
	      
	      // 시작페이지
	      // 1 = (1 / 3) * 3 + 1;
	      startPage = (currentPage / pageBlock) * pageBlock + 1;
	      if(currentPage % pageBlock == 0) startPage -= pageBlock;
	      
	      System.out.println("startPage : " + startPage);
	      
	      // 마지막페이지
	      endPage = startPage + pageBlock - 1;
	      if(endPage > pageCount) endPage = pageCount;
	      
	      System.out.println("endPage : " + endPage);
	      
	      System.out.println("==========================");
	      
	      if(cnt > 0) {
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("start", start);
   	 	map.put("end", end);
		map.put("view_AccountNum", view_AccountNum);
		map.put("start_date", start_date);
		map.put("end_date", end_date);
		List<AccountTransferVO> list = InquiryTransferDAO.TransactionDetails_Table_ALL(map);
		
		Map<String,Object> outTran = InquiryTransferDAO.outTran(map);
		System.out.println(outTran.toString());
		Map<String,Object> inTran = InquiryTransferDAO.inTran(map);
		System.out.println(inTran.toString());
		
		  model.addAttribute("list", list);	//입출금내역 리스트
		  
		  model.addAttribute("outTran", outTran); //출금 갯수(거래요금)
		  
		  model.addAttribute("inTran", inTran);		//입금 갯수(거래요금)
		  
		
		  model.addAttribute("cnt", cnt);           // 글갯수
	      model.addAttribute("number", number);      // 출력용 글번호
	      model.addAttribute("pageNum", pageNum);    // 페이지 번호
	      model.addAttribute("startPage", startPage);    // 시작페이지
    	  model.addAttribute("endPage", endPage);      // 마지막페이지
    	  model.addAttribute("pageBlock", pageBlock);   // 한 블럭당 페이지 갯수
    	  model.addAttribute("pageCount", pageCount);   // 페이지 갯수
    	  model.addAttribute("currentPage", currentPage);// 현재페이지
	      }
		
		//View_Content
		
		
	}

}
