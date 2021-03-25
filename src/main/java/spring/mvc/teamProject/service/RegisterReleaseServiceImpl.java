package spring.mvc.teamProject.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.teamProject.persistence.MembersDAOImpl;
import spring.mvc.teamProject.persistence.RegisterReleaseDAOImpl;
import spring.mvc.teamProject.vo.AccountVO;

@Service
public class RegisterReleaseServiceImpl implements RegisterReleaseService{
	
	@Autowired
	private RegisterReleaseDAOImpl accountDAO;
	
	@Autowired
	MembersDAOImpl memberDAO;
	
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
		String strId = (String)req.getSession().getAttribute("id");
		System.out.println("strId"+strId);
		int accountPW = accountDAO.AccountPwdCheck(strId);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", strId);
		map.put("accountPW", accountPW);
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
		List<AccountVO> list = accountDAO.selectById(strId);
		System.out.println("list"+list);
		model.addAttribute("list", list);
		
	}

}
