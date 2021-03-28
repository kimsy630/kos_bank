package spring.mvc.teamProject.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.teamProject.persistence.InquiryTransferDAO;
import spring.mvc.teamProject.persistence.RegisterReleaseDAO;
import spring.mvc.teamProject.vo.AccountVO;
import spring.mvc.teamProject.vo.TransferVO;


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

}
