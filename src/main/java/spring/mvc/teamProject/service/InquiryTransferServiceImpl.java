package spring.mvc.teamProject.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;
import java.util.List;
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
		String strId = (String)req.getSession().getAttribute("id");
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
	@Override
	public void TransactionDetails(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("id");
		
		List<AccountVO> accList = InquiryTransferDAO.TransactionDetails(strId);
		model.addAttribute("accList", accList);
	}
	@Override
	public void TransactionDetails_Table(HttpServletRequest req, Model model) {
		String view_AccountNum = req.getParameter("view_AccountNum");
		String start_date = req.getParameter("start_date");
		String end_date = req.getParameter("end_date");
		String View_Content = req.getParameter("View_Content");
		
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("view_AccountNum", view_AccountNum);
		map.put("start_date", start_date);
		map.put("end_date", end_date);
		map.put("View_Content", View_Content);
		
		List<AccountTransferVO> list = null;
		
		if(View_Content.equals("All_List") ) {
			list = InquiryTransferDAO.TransactionDetails_Table_ALL(map);
			System.out.println("list =" + list);
			model.addAttribute("list", list);
		}
		/*
		else if(View_Content == "Deposit_List") {
			accList = InquiryTransferDAO.TransactionDetails_Deposit(map);
		}
		else if(View_Content == "Withdrawal_List") {
			accList = InquiryTransferDAO.TransactionDetails_Withdrawal(map);
		}
		
		model.addAttribute("accList", accList);
		*/
		
		
	}

}
