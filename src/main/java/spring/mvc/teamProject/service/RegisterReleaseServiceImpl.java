package spring.mvc.teamProject.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.teamProject.persistence.RegisterReleaseDAOImpl;
import spring.mvc.teamProject.vo.AccountVO;

@Service
public class RegisterReleaseServiceImpl implements RegisterReleaseService{
	
	@Autowired
	private RegisterReleaseDAOImpl accountDAO;
	
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
		
		
	}

}
