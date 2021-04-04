package spring.mvc.teamProject.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.teamProject.persistence.MembersDAO;
import spring.mvc.teamProject.persistence.RegisterReleaseDAO;
import spring.mvc.teamProject.vo.AccountVO;
import spring.mvc.teamProject.vo.MembersVO;

@Service
public class RegisterReleaseServiceImpl implements RegisterReleaseService{
	
	@Autowired
	RegisterReleaseDAO accountDAO;
	
	@Autowired
	MembersDAO memberDAO;
	
	@Override
	public void AddAccountService(HttpServletRequest req, Model model) {
		AccountVO vo = new AccountVO();
		String strId= req.getParameter("id");
		vo.setId(strId);
		vo.setAccountPW(Integer.parseInt(req.getParameter("accountPW")));
		
		System.out.println("id"+strId);
		System.out.println("accountPW"+vo.getAccountPW());
				
		int insertCnt = accountDAO.insertAccount(vo);
		model.addAttribute("insertCnt",insertCnt);
		System.out.println("insertCnt"+insertCnt);
	}

	@Override
	public void DeleteAccountService(HttpServletRequest req, Model model) {
		String account = req.getParameter("account");
		int accountPW = (Integer.parseInt(req.getParameter("accountPW")));
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("account", account);
		map.put("accountPW", accountPW);
		System.out.println("account : "+account);
		System.out.println("accountPW : "+accountPW);
		int deleteCnt = accountDAO.deleteAccount(map);
		
		
		model.addAttribute("deleteCnt",deleteCnt);
		System.out.println("deleteCnt"+deleteCnt);
		
	}

	@Override
	public void AccountList(HttpServletRequest req, Model model) {
			String strId = (String)req.getSession().getAttribute("id");
			List<AccountVO> list = accountDAO.selectById(strId);
			System.out.println("list"+list);
			model.addAttribute("list", list);
	}
	
	// 계좌(정상)리스트
	@Override
	public void AccountNomalList(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("id");
		List<AccountVO> list = accountDAO.selectNomalById(strId);
		
		
		System.out.println("list1"+list);
		model.addAttribute("list", list);
		
	}
	
	// 계좌(정상+입출금)리스트
	@Override
	public void AccountInoutType(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("id");
		List<AccountVO> list = accountDAO.selectType(strId);
		
		System.out.println("list2"+list);
		model.addAttribute("list", list);
		
	}
	
	// 계좌(정상+입출금+대출)리스트
	@Override
	public void AccountInoutLoansType(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("id");
		List<AccountVO> list = accountDAO.selectTransferType(strId);
		
		System.out.println("list3"+list);
		model.addAttribute("list", list);
		
	}
		
	
	// 예금주 조회
	@Override
	public void AccountNameChk(HttpServletRequest req, Model model) {
		String sender_account = req.getParameter("sender_account");
		System.out.println("sender_account"+sender_account);
		String name = accountDAO.AccountNameChk(sender_account);
		

		System.out.println("name"+name);
		model.addAttribute("name", name);
		
	}
	
	// 예금주 조회
	@Override
	public void IdNameChk(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("id");
		String name = accountDAO.IdNameChk(strId);
		
		System.out.println("name"+name);
		model.addAttribute("name",name);
		model.addAttribute("id",strId);
		
	}

}
