package spring.mvc.teamProject.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.teamProject.persistence.InquiryTransferDAOImpl;
import spring.mvc.teamProject.vo.AccountVO;

@Service
public class InquiryTransferServiceImpl implements InquiryTransferService{

	@Autowired
	InquiryTransferDAOImpl InquiryTransferDAO;
	
	//입출금 계좌조회 (정하늘)
	@Override  
	public void AccountTable(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("id");
		
		List<AccountVO> list = InquiryTransferDAO.AccountTable(strId);
		
		model.addAttribute("list", list);
	}
	//대출 조회 (정하늘) 미완성
	@Override
	public void LoansTable(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("id");
		
		List<AccountVO> list = InquiryTransferDAO.LoansTable(strId);
		System.out.println(list);
		
		model.addAttribute("list", list);
	}
	//적금조회 (정하늘)
	@Override
	public void IS_Table(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("id");
		
		List<AccountVO> list = InquiryTransferDAO.IS_Table(strId);
		System.out.println("list => " + list);
		
		model.addAttribute("list", list);
	}
	//펀드조회
	@Override
	public void fund_Table(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("id");
		
		List<AccountVO> list = InquiryTransferDAO.fund_Table(strId);
		System.out.println("list => " + list);
		
		model.addAttribute("list", list);
		
	}
	//예금조회 (정하늘)
	@Override
	public void DepositTable(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("id");
		
		List<AccountVO> list = InquiryTransferDAO.DepositTable(strId);
		System.out.println("list => " + list);
		
		model.addAttribute("list", list);
		
	}
	//정지/휴면조회  (정하늘)
	@Override 
	public void StopSleepTable(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("id");
		
		List<AccountVO> list = InquiryTransferDAO.StopSleepTable(strId);
		System.out.println("list => " + list);
		
		model.addAttribute("list", list);
	}
	//전체조회
	@Override
	public void AllTable(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("id");
		
		List<AccountVO> list1 = InquiryTransferDAO.AccountTable(strId); //입출금조회
		List<AccountVO> list2 = InquiryTransferDAO.LoansTable(strId);///대출조회
		List<AccountVO> list3 = InquiryTransferDAO.IS_Table(strId);	//적금조회
		List<AccountVO> list4 = InquiryTransferDAO.fund_Table(strId);//펀드조회
		List<AccountVO> list5 = InquiryTransferDAO.DepositTable(strId);//예금조회
		List<AccountVO> list6 = InquiryTransferDAO.StopSleepTable(strId);//정지/휴면
		
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
		start_date = start_date.replace("-", "");
		start_date = start_date.substring(2);
		end_date=end_date.replace("-", "");
		end_date=end_date.substring(2);
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("view_AccountNum", view_AccountNum);
		map.put("start_date", start_date);
		map.put("end_date", end_date);
		map.put("View_Content", View_Content);
		/*
		List<AccountVO> accList = null;
		model.addAttribute("accList", accList);
		
		if(View_Content == "All_List") {
			accList = InquiryTransferDAO.TransactionDetails_Table_ALL(map);
		}
		
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
